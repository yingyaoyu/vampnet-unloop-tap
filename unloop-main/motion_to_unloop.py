#!/usr/bin/env python3
"""Webcam motion-to-Unloop control prototype.

extracts three simple MediaPipe pose features:
  1. arm_height: how high the wrists are relative to the torso
  2. motion_energy: frame-to-frame body movement
  3. arm_spread: how open/wide the arms are

It sends those features and mapped Unloop control values over OSC.

arm_height: wrists high vs torso, 0..1.
temperature = 0.75..1.30: higher arms = wilder VampNet sampling.
input_gain_db: binary loudness boost. Below 0.78 arm height = 0 dB; above/equal 0.78 = +16 dB (a bit above shoulder)

motion_energy: frame-to-frame body movement, 0..1.
dropout = 0..0.25: more movement = less prompt anchoring / more variation.
onset_mask = 3..25: more movement preserves wider onset/attack regions.
filter_cutoff = 350..9000 Hz: more movement = brighter processed input.
filter_q = 0.7..3.5: more movement = more resonant filter.
drive = 1..6: more movement = more saturation/distortion.
 
arm_spread: wrist distance vs shoulder width, 0..1.
< 0.33 -> periodic = 3
< 0.66 -> periodic = 7
otherwise -> periodic = 13
Smaller p means denser periodic prompt anchors; larger p means looser rhythmic constraint.
"""

from __future__ import annotations

import argparse
import socket
import struct
import threading
import time
from collections import Counter
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable
from urllib.request import urlretrieve

import cv2
import mediapipe as mp
import numpy as np
from pythonosc.udp_client import SimpleUDPClient


POSE_MODEL_URL = "https://storage.googleapis.com/mediapipe-models/pose_landmarker/pose_landmarker_lite/float16/latest/pose_landmarker_lite.task"
POSE_MODEL_PATH = Path(__file__).with_name("models") / "pose_landmarker_lite.task"

# Loudness is intentionally a discrete gesture: normal below the threshold,
# then an obvious boost once the wrists are clearly raised above the shoulders.
LOUDNESS_TRIGGER_ARM_HEIGHT = 0.78
LOUDNESS_NORMAL_GAIN_DB = 0.0
LOUDNESS_BOOST_GAIN_DB = 16.0

POSE_INDEX = {
    "NOSE": 0,
    "LEFT_EYE_INNER": 1,
    "LEFT_EYE": 2,
    "LEFT_EYE_OUTER": 3,
    "RIGHT_EYE_INNER": 4,
    "RIGHT_EYE": 5,
    "RIGHT_EYE_OUTER": 6,
    "LEFT_EAR": 7,
    "RIGHT_EAR": 8,
    "MOUTH_LEFT": 9,
    "MOUTH_RIGHT": 10,
    "LEFT_SHOULDER": 11,
    "RIGHT_SHOULDER": 12,
    "LEFT_ELBOW": 13,
    "RIGHT_ELBOW": 14,
    "LEFT_WRIST": 15,
    "RIGHT_WRIST": 16,
    "LEFT_PINKY": 17,
    "RIGHT_PINKY": 18,
    "LEFT_INDEX": 19,
    "RIGHT_INDEX": 20,
    "LEFT_THUMB": 21,
    "RIGHT_THUMB": 22,
    "LEFT_HIP": 23,
    "RIGHT_HIP": 24,
    "LEFT_KNEE": 25,
    "RIGHT_KNEE": 26,
    "LEFT_ANKLE": 27,
    "RIGHT_ANKLE": 28,
    "LEFT_HEEL": 29,
    "RIGHT_HEEL": 30,
    "LEFT_FOOT_INDEX": 31,
    "RIGHT_FOOT_INDEX": 32,
}

POSE_CONNECTIONS = (
    ("LEFT_SHOULDER", "RIGHT_SHOULDER"),
    ("LEFT_SHOULDER", "LEFT_ELBOW"),
    ("LEFT_ELBOW", "LEFT_WRIST"),
    ("RIGHT_SHOULDER", "RIGHT_ELBOW"),
    ("RIGHT_ELBOW", "RIGHT_WRIST"),
    ("LEFT_SHOULDER", "LEFT_HIP"),
    ("RIGHT_SHOULDER", "RIGHT_HIP"),
    ("LEFT_HIP", "RIGHT_HIP"),
    ("LEFT_HIP", "LEFT_KNEE"),
    ("LEFT_KNEE", "LEFT_ANKLE"),
    ("RIGHT_HIP", "RIGHT_KNEE"),
    ("RIGHT_KNEE", "RIGHT_ANKLE"),
)

LANDMARKS_FOR_ENERGY = (
    "LEFT_SHOULDER",
    "RIGHT_SHOULDER",
    "LEFT_ELBOW",
    "RIGHT_ELBOW",
    "LEFT_WRIST",
    "RIGHT_WRIST",
    "LEFT_HIP",
    "RIGHT_HIP",
    "LEFT_KNEE",
    "RIGHT_KNEE",
    "LEFT_ANKLE",
    "RIGHT_ANKLE",
)


@dataclass
class MotionFeatures:
    arm_height: float
    motion_energy: float
    arm_spread: float


@dataclass
class UnloopControls:
    temperature: float
    dropout: float
    onset_mask: int
    periodic: int
    input_gain: float
    input_gain_db: float
    filter_cutoff: float
    filter_q: float
    drive: float


@dataclass
class MotionSample:
    features: MotionFeatures
    controls: UnloopControls


def clamp(value: float, low: float = 0.0, high: float = 1.0) -> float:
    return max(low, min(high, value)) #keeps values between 0 and 1


def smooth(previous: float, current: float, alpha: float) -> float:
    return alpha * current + (1.0 - alpha) * previous


def exp_map(value: float, low: float, high: float) -> float:
    value = clamp(value)
    return float(low * ((high / low) ** value))


def arm_height_to_loudness_gain(arm_height: float) -> tuple[float, float]:
    gain_db = (
        LOUDNESS_BOOST_GAIN_DB
        if arm_height >= LOUDNESS_TRIGGER_ARM_HEIGHT
        else LOUDNESS_NORMAL_GAIN_DB
    )
    gain_linear = 10.0 ** (gain_db / 20.0)
    return gain_linear, gain_db


def ensure_pose_model(path: Path) -> Path:
    if path.exists():
        return path
    path.parent.mkdir(parents=True, exist_ok=True)
    print(f"Downloading MediaPipe pose model to {path}")
    urlretrieve(POSE_MODEL_URL, path)
    return path


def landmark_xy(landmarks, name: str) -> np.ndarray:
    idx = POSE_INDEX[name]
    lm = landmarks[idx]
    return np.array([lm.x, lm.y], dtype=np.float32)


def mean_xy(landmarks, names: Iterable[str]) -> np.ndarray:
    points = [landmark_xy(landmarks, name) for name in names]
    return np.mean(points, axis=0)


def compute_features(landmarks, previous_points: np.ndarray | None) -> tuple[MotionFeatures | None, np.ndarray | None]:
    #landmarks from Mediapipe, previous_points: landmark positions from the previous frame, or None; 
    #returns a tuple: a MotionFeatures object or None; the current points array or None
    if not landmarks:
        return None, previous_points #If no body landmarks were detected, return no features. previous_points unchanged.

    #arm_height = wrist height relative to hip 
    #motion_energy
    #arm_spread = how far apart the wrists are relative to shoulder width

    shoulders = mean_xy(landmarks, ("LEFT_SHOULDER", "RIGHT_SHOULDER"))
    hips = mean_xy(landmarks, ("LEFT_HIP", "RIGHT_HIP"))
    wrists = mean_xy(landmarks, ("LEFT_WRIST", "RIGHT_WRIST"))
    #average x/y position of: both shoulders;both hips; both wrists; gets one center point for each body area.

    torso_height = max(abs(float(hips[1] - shoulders[1])), 1e-4) #vertical distance between shoulders and hips.hips[1] and shoulders[1] are y-coordinates.max(..., 1e-4) prevents division by zero if the pose detector gives weird or collapsed coordinates.

    shoulder_width = max(
        float(np.linalg.norm(landmark_xy(landmarks, "LEFT_SHOULDER") - landmark_xy(landmarks, "RIGHT_SHOULDER"))), 
        1e-4,
    ) #Euclidean distance between left and right shoulder landmarks, estimate of how wide shoulders are 

    # how high the wrists are relative to the torso. 0 ~= wrists near hips, 0.67 ~= wrists near shoulders, 1 ~= wrists above head.
    arm_height_raw = (float(hips[1] - wrists[1]) / torso_height) / 1.5 
    arm_height = clamp(arm_height_raw) #divide by 1.5 to scale into a rough 0..1 range, then clamp to ensure it stays within that range.

    wrist_width = float(
        np.linalg.norm(landmark_xy(landmarks, "LEFT_WRIST") - landmark_xy(landmarks, "RIGHT_WRIST"))
    ) #Euclidean distance between left and right wrist landmarks

    # 0 ~= closed arms, 1 ~= very open arms.
    arm_spread = clamp((wrist_width / shoulder_width) / 3.0)

    points = np.array([landmark_xy(landmarks, name) for name in LANDMARKS_FOR_ENERGY], dtype=np.float32)
    #Collects selected landmark positions into a NumPy array.

    if previous_points is None:
        motion_energy = 0.0 #If this is the first frame, there is no previous frame to compare with, so movement is 0.
    else:
        # Scale empirical normalized image velocity into a 0..1 range.
        motion_energy = clamp(float(np.mean(np.linalg.norm(points - previous_points, axis=1))) * 18.0)
        #If there are previous points, points-prev_points to calculate how much each tracked landmark moved;
        #np.linalg.norm(..., axis=1) computes the Euclidean distance for each landmark between the current and previous frame, giving a movement magnitude for each landmark.
        #np.mean(...) averages those movement magnitudes across all the selected landmarks, giving an overall
        #Multiplying by 18.0 scales this value into a rough 0..1 range based on empirical observation, and clamp ensures it stays within that range.

    return MotionFeatures(arm_height=arm_height, motion_energy=motion_energy, arm_spread=arm_spread), points
    # Returns points so the next video frame can use them as previous_points.

def map_to_unloop(features: MotionFeatures) -> UnloopControls:
    """Map a 3-feature motion embedding to Unloop/VampNet controls."""
    # Arms higher = more expressive/wilder sampling. range: 0.75..1.3 cuz arm_height 0..1
    temperature = 0.75 + 0.55 * features.arm_height 

    # Loudness stays unchanged until the arms cross the high-arm threshold,
    # then jumps to an obvious boost. Max can still display this on its dial.
    input_gain, input_gain_db = arm_height_to_loudness_gain(features.arm_height)

    # More movement = more regeneration pressure. dropout: randomly remove some of the prompt anchors 
    dropout = 0.25 * features.motion_energy #range 0..0.25 because motion_energy is clamped to 0..1

    # More movement = brighter/more affected sound before VampNet encoding.
    filter_cutoff = exp_map(features.motion_energy, 350.0, 9000.0)
    filter_q = 0.7 + 2.8 * features.motion_energy
    drive = 1.0 + 5.0 * features.motion_energy

    # More movement also asks VampNet to preserve tap attacks/onsets.
    onset_mask = int(round(3 + 22 * features.motion_energy)) #range 3..25 because motion_energy is clamped to 0..1. 
    #width of the preserved window around each detected onset.
    #At low movement, preserve a small window around every detected onset

    # Open arms loosen the rhythmic constraint; compact posture preserves pulse.
    if features.arm_spread < 0.33:
        periodic = 3
    elif features.arm_spread < 0.66:
        periodic = 7
    else:
        periodic = 13

    return UnloopControls(
        temperature=round(temperature, 3),
        dropout=round(dropout, 3),
        onset_mask=onset_mask,
        periodic=periodic,
        input_gain=round(input_gain, 3),
        input_gain_db=round(input_gain_db, 2),
        filter_cutoff=round(filter_cutoff, 1),
        filter_q=round(filter_q, 3),
        drive=round(drive, 3),
    )

#sends to Max using User Datagram Protocol, takes a UDP/PSC client from python-osc package, Max receives in vamper.maxpat udpreceive 9100

def send_controls(client: SimpleUDPClient, features: MotionFeatures, controls: UnloopControls) -> None:
    client.send_message("/motion/features", [features.arm_height, features.motion_energy, features.arm_spread])
    client.send_message("/motion/temperature", controls.temperature)
    client.send_message("/motion/dropout", controls.dropout)
    client.send_message("/motion/onsetmask", controls.onset_mask)
    client.send_message("/motion/periodic", controls.periodic)
    client.send_message("/motion/inputgain", controls.input_gain)
    client.send_message("/motion/inputgain_db", controls.input_gain_db)
    client.send_message("/motion/filtercutoff", controls.filter_cutoff)
    client.send_message("/motion/filterq", controls.filter_q)
    client.send_message("/motion/drive", controls.drive)
    client.send_message("/motion/gain", [controls.input_gain, controls.input_gain_db])


def summarize_samples(samples: list[MotionSample], summary_mode: str) -> MotionSample | None:
    if not samples:
        return None

    feature_values = np.array(
        [[sample.features.arm_height, sample.features.motion_energy, sample.features.arm_spread] for sample in samples],
        dtype=np.float32,
    ) #convert list of MotionSample objects into a NumPy array of shape (num_samples, 3) 
    control_values = np.array(
        [
            [
                sample.controls.temperature,
                sample.controls.dropout,
                sample.controls.onset_mask,
                sample.controls.input_gain,
                sample.controls.input_gain_db,
                sample.controls.filter_cutoff,
                sample.controls.filter_q,
                sample.controls.drive,
            ]
            for sample in samples
        ],
        dtype=np.float32,
    )

    if summary_mode == "median":
        feature_summary = np.median(feature_values, axis=0)
        control_summary = np.median(control_values, axis=0)
    else:
        feature_summary = np.mean(feature_values, axis=0)
        control_summary = np.mean(control_values, axis=0)

    periodic = Counter(sample.controls.periodic for sample in samples).most_common(1)[0][0]
    input_gain, input_gain_db = arm_height_to_loudness_gain(float(feature_summary[0]))
    return MotionSample(
        features=MotionFeatures(
            arm_height=float(feature_summary[0]),
            motion_energy=float(feature_summary[1]),
            arm_spread=float(feature_summary[2]),
        ),
        controls=UnloopControls(
            temperature=round(float(control_summary[0]), 3),
            dropout=round(float(control_summary[1]), 3),
            onset_mask=int(round(float(control_summary[2]))),
            periodic=int(periodic),
            input_gain=round(input_gain, 3),
            input_gain_db=round(input_gain_db, 2),
            filter_cutoff=round(float(control_summary[5]), 1),
            filter_q=round(float(control_summary[6]), 3),
            drive=round(float(control_summary[7]), 3),
        ),
    )


class RecordingAccumulator: #collects motion samples during a recording window, summarizes them, and sends to Max. 
    def __init__(self, client: SimpleUDPClient, summary_mode: str, print_only: bool = False): #constructor
        self.client = client
        self.summary_mode = summary_mode
        self.print_only = print_only 
        self.lock = threading.Lock()
        self.recording = False
        self.samples: list[MotionSample] = []
        self.last_summary: MotionSample | None = None

    def add(self, features: MotionFeatures, controls: UnloopControls) -> None:
        with self.lock:
            if self.recording:
                self.samples.append(MotionSample(features=features, controls=controls))

    def set_recording(self, recording: bool) -> None:
        summary = None
        with self.lock:
            if recording and not self.recording:
                self.samples = []
                self.last_summary = None
                self.recording = True
                print("Motion accumulator: recording window started")
                return

            if not recording and self.recording:
                self.recording = False
                summary = summarize_samples(self.samples, self.summary_mode)
                self.last_summary = summary
                print(f"Motion accumulator: recording window stopped ({len(self.samples)} samples)")

        if summary:
            self.send_summary(summary)

    def toggle_recording(self) -> bool:
        with self.lock:
            next_state = not self.recording
        self.set_recording(next_state)
        return next_state

    def current_summary(self) -> MotionSample | None:
        with self.lock:
            if self.recording and self.samples:
                return summarize_samples(self.samples, self.summary_mode)
            return self.last_summary

    def send_summary(self, summary: MotionSample) -> None:
        if not self.print_only:
            send_controls(self.client, summary.features, summary.controls)
        print(
            "Motion accumulator: applied summary "
            f"temp={summary.controls.temperature:.2f} "
            f"dropout={summary.controls.dropout:.2f} "
            f"onset={summary.controls.onset_mask} "
            f"periodic={summary.controls.periodic} "
            f"gain={summary.controls.input_gain:.2f} "
            f"cutoff={summary.controls.filter_cutoff:.0f}Hz "
            f"drive={summary.controls.drive:.2f}"
        )

    def apply_summary_if_available(self) -> bool:
        summary = self.current_summary()
        if not summary:
            return False
        self.send_summary(summary)
        return True

    def status_text(self) -> str:
        with self.lock:
            if self.recording:
                return f"REC AVG {len(self.samples)} samples"
            if self.last_summary:
                controls = self.last_summary.controls
                return (
                    "SUMMARY "
                    f"temp {controls.temperature:.2f} | dropout {controls.dropout:.2f} | "
                    f"onset {controls.onset_mask} | periodic {controls.periodic} | "
                    f"gain {controls.input_gain:.2f} | drive {controls.drive:.2f}"
                )
            return "LIVE"


def parse_max_event(data: bytes) -> tuple[str, int] | None:
    if b"/max/record" in data:
        if b",i" in data and len(data) >= 4:
            return "record", int(struct.unpack(">i", data[-4:])[0])
        text = data.replace(b"\x00", b" ").decode("utf-8", errors="ignore")
        parts = text.split()
        for part in reversed(parts):
            if part in {"0", "1"}:
                return "record", int(part)
        return "record", 1

    if b"/max/unloop" in data:
        return "unloop", 1

    return None


class MaxEventListener: #opens UDP port 9101 to receive max events
    def __init__(self, port: int, accumulator: RecordingAccumulator):
        self.port = port
        self.accumulator = accumulator
        self.stop_event = threading.Event()
        self.thread = threading.Thread(target=self._serve, daemon=True)
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        self.sock.settimeout(0.25)
        self.sock.bind(("127.0.0.1", port)) 

    def start(self) -> None:
        self.thread.start()

    def close(self) -> None:
        self.stop_event.set()
        self.thread.join(timeout=1.0)
        self.sock.close()

    def _serve(self) -> None:
        print(f"Listening for Max record/unloop events on 127.0.0.1:{self.port}")
        while not self.stop_event.is_set():
            try:
                data, _addr = self.sock.recvfrom(2048)
            except TimeoutError:
                continue
            except OSError:
                break

            event = parse_max_event(data)
            if not event:
                continue

            name, value = event
            if name == "record":
                self.accumulator.set_recording(bool(value))
            elif name == "unloop":
                self.accumulator.apply_summary_if_available()


def draw_pose(frame, landmarks) -> None: #draw skeleton lines
    if not landmarks:
        return

    height, width = frame.shape[:2]
    for start_name, end_name in POSE_CONNECTIONS:
        start = landmarks[POSE_INDEX[start_name]]
        end = landmarks[POSE_INDEX[end_name]]
        start_xy = (int(start.x * width), int(start.y * height))
        end_xy = (int(end.x * width), int(end.y * height))
        cv2.line(frame, start_xy, end_xy, (0, 255, 0), 2)

    for name in ("LEFT_WRIST", "RIGHT_WRIST", "LEFT_ELBOW", "RIGHT_ELBOW", "LEFT_SHOULDER", "RIGHT_SHOULDER", "LEFT_HIP", "RIGHT_HIP"):
        point = landmarks[POSE_INDEX[name]]
        cv2.circle(frame, (int(point.x * width), int(point.y * height)), 5, (0, 255, 255), -1)


class PoseTracker:
    def process(self, rgb_frame):
        raise NotImplementedError

    def close(self) -> None:
        pass


class SolutionsPoseTracker(PoseTracker): #old, included for compatibility
    def __init__(self):
        self.pose = mp.solutions.pose.Pose(
            model_complexity=1,
            enable_segmentation=False,
            min_detection_confidence=0.5,
            min_tracking_confidence=0.5,
        )

    def process(self, rgb_frame):
        results = self.pose.process(rgb_frame)
        if not results.pose_landmarks:
            return None
        return results.pose_landmarks.landmark

    def close(self) -> None:
        self.pose.close()


class TasksPoseTracker(PoseTracker): #new, new mediapipe tasks api
    def __init__(self, model_path: Path):
        from mediapipe.tasks.python import BaseOptions, vision

        options = vision.PoseLandmarkerOptions(
            base_options=BaseOptions(model_asset_path=str(model_path)),
            running_mode=vision.RunningMode.VIDEO,
            num_poses=1,
            min_pose_detection_confidence=0.5,
            min_pose_presence_confidence=0.5,
            min_tracking_confidence=0.5,
        )
        self.landmarker = vision.PoseLandmarker.create_from_options(options)
        self.start_time = time.monotonic()
        self.last_timestamp_ms = -1

    def process(self, rgb_frame):
        timestamp_ms = int((time.monotonic() - self.start_time) * 1000)
        if timestamp_ms <= self.last_timestamp_ms:
            timestamp_ms = self.last_timestamp_ms + 1
        self.last_timestamp_ms = timestamp_ms

        image = mp.Image(image_format=mp.ImageFormat.SRGB, data=rgb_frame)
        results = self.landmarker.detect_for_video(image, timestamp_ms)
        if not results.pose_landmarks:
            return None
        return results.pose_landmarks[0]

    def close(self) -> None:
        self.landmarker.close()


def create_pose_tracker(model_path: Path) -> PoseTracker:
    if hasattr(mp, "solutions"):
        return SolutionsPoseTracker()
    return TasksPoseTracker(ensure_pose_model(model_path))


def open_camera(index: int):
    cap = cv2.VideoCapture(index, cv2.CAP_AVFOUNDATION)
    if not cap.isOpened():
        cap.release()
        cap = cv2.VideoCapture(index)

    if not cap.isOpened():
        raise RuntimeError(
            f"Could not open camera index {index}. On macOS, allow Camera access for the app "
            "running this command: System Settings > Privacy & Security > Camera > enable "
            "Terminal, iTerm, VS Code, or Codex. Then rerun this script."
        )
    return cap


def main() -> None:
    parser = argparse.ArgumentParser(description="Send webcam motion controls to Unloop over OSC.")
    parser.add_argument("--host", default="127.0.0.1", help="OSC host running Max.")
    parser.add_argument("--port", type=int, default=9100, help="OSC port for Max to receive motion controls.")
    parser.add_argument("--camera", type=int, default=0, help="Webcam index.")
    parser.add_argument("--send-rate", type=float, default=10.0, help="OSC sends per second.")
    parser.add_argument("--smoothing", type=float, default=0.25, help="Feature smoothing amount, 0..1.")
    parser.add_argument("--hide", action="store_true", help="Run without the webcam preview window.")
    parser.add_argument("--print-only", action="store_true", help="Print values without sending OSC.")
    parser.add_argument("--pose-model", default=str(POSE_MODEL_PATH), help="MediaPipe Tasks pose model path.")
    parser.add_argument("--listen-port", type=int, default=9101, help="UDP port for Max record/unloop events; use 0 to disable.")
    parser.add_argument("--summary-mode", choices=("mean", "median"), default="mean", help="How to summarize continuous controls.")
    parser.add_argument("--pretrigger-delay", type=float, default=0.15, help="Seconds to wait after applying a summary before triggering Unloop.")
    args = parser.parse_args()

    client = SimpleUDPClient(args.host, args.port)
    accumulator = RecordingAccumulator(client, args.summary_mode, print_only=args.print_only)
    max_listener = None
    if args.listen_port:
        try:
            max_listener = MaxEventListener(args.listen_port, accumulator)
            max_listener.start()
        except OSError as exc:
            print(f"Could not listen for Max events on 127.0.0.1:{args.listen_port}: {exc}")
            print("Keyboard shortcuts still work: press 'r' to mark the recording window, 'u' to apply the summary and unloop.")

    cap = open_camera(args.camera)

    pose_tracker = create_pose_tracker(Path(args.pose_model).expanduser())
    previous_points = None
    smoothed = MotionFeatures(0.0, 0.0, 0.0)
    last_send = 0.0
    send_interval = 1.0 / max(args.send_rate, 0.1)

    print("Motion-to-Unloop prototype")
    print(f"Sending OSC to {args.host}:{args.port}")
    print("Press 'r' in the webcam window to start/stop averaging.")
    print("Press 'u' in the webcam window to apply the average and send /motion/unloop 1.")
    print("Press 'q' to quit.")

    try:
        while True:
            ok, frame = cap.read()
            if not ok:
                break

            frame = cv2.flip(frame, 1)
            rgb = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)
            landmarks = pose_tracker.process(rgb) 
            # landmarks[12]: NormalizedLandmark(x=0.27521955966949463, y=1.1038858890533447, z=-0.5271918177604675, visibility=0.9503990411758423, presence=0.7850533723831177, name=None)
            # visibility:confidence that this landmark is visible. prsence: confidence that this landmark exists in the detected pose.
            features, previous_points = compute_features(landmarks, previous_points)

            if features is not None:
                smoothed = MotionFeatures(
                    arm_height=smooth(smoothed.arm_height, features.arm_height, args.smoothing),
                    motion_energy=smooth(smoothed.motion_energy, features.motion_energy, args.smoothing),
                    arm_spread=smooth(smoothed.arm_spread, features.arm_spread, args.smoothing),
                )
                controls = map_to_unloop(smoothed)
                accumulator.add(smoothed, controls)

                now = time.time()
                if now - last_send >= send_interval:
                    if args.print_only:
                        print(
                            f"features arm_height={smoothed.arm_height:.2f} "
                            f"energy={smoothed.motion_energy:.2f} spread={smoothed.arm_spread:.2f} | "
                            f"temp={controls.temperature:.2f} dropout={controls.dropout:.2f} "
                            f"onset={controls.onset_mask} periodic={controls.periodic} "
                            f"gain={controls.input_gain:.2f}/{controls.input_gain_db:.1f}dB "
                            f"cutoff={controls.filter_cutoff:.0f}Hz drive={controls.drive:.2f}"
                        )
                    else:
                        send_controls(client, smoothed, controls)
                    last_send = now

                if landmarks and not args.hide:
                    draw_pose(frame, landmarks)
                overlay = (
                    f"arm_height {smoothed.arm_height:.2f} | energy {smoothed.motion_energy:.2f} | "
                    f"spread {smoothed.arm_spread:.2f}"
                )
                mapped = (
                    f"temp {controls.temperature:.2f} | dropout {controls.dropout:.2f} | "
                    f"onset {controls.onset_mask} | periodic {controls.periodic}"
                )
                effects = (
                    f"gain {controls.input_gain:.2f} ({controls.input_gain_db:.1f}dB) | "
                    f"cutoff {controls.filter_cutoff:.0f}Hz | drive {controls.drive:.2f}"
                )
                accumulator_status = accumulator.status_text()
            else:
                overlay = "No pose detected"
                mapped = ""
                effects = ""
                accumulator_status = accumulator.status_text()

            if not args.hide:
                cv2.putText(frame, overlay, (18, 28), cv2.FONT_HERSHEY_SIMPLEX, 0.65, (0, 255, 0), 2)
                cv2.putText(frame, mapped, (18, 56), cv2.FONT_HERSHEY_SIMPLEX, 0.65, (0, 255, 255), 2)
                cv2.putText(frame, effects, (18, 84), cv2.FONT_HERSHEY_SIMPLEX, 0.65, (120, 220, 255), 2)
                cv2.putText(frame, accumulator_status, (18, 112), cv2.FONT_HERSHEY_SIMPLEX, 0.65, (255, 180, 0), 2)
                cv2.putText(frame, "r: avg on/off | u: avg+unloop | q: quit", (18, 140), cv2.FONT_HERSHEY_SIMPLEX, 0.65, (255, 255, 255), 2)
                cv2.imshow("Motion to Unloop", frame)
                key = cv2.waitKey(1) & 0xFF
                if key == ord("q"):
                    break
                if key == ord("r"):
                    accumulator.toggle_recording()
                if key == ord("u"):
                    if args.print_only:
                        accumulator.apply_summary_if_available()
                        print("/motion/unloop 1")
                    else:
                        accumulator.apply_summary_if_available()
                        time.sleep(max(args.pretrigger_delay, 0.0))
                        client.send_message("/motion/unloop", 1)
            else:
                if time.time() - last_send < send_interval:
                    time.sleep(0.01)

    finally:
        pose_tracker.close()
        if max_listener:
            max_listener.close()
        cap.release()
        cv2.destroyAllWindows()


if __name__ == "__main__":
    main()
