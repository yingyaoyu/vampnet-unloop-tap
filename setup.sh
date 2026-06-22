#!/usr/bin/env bash

set -euo pipefail

ENV_NAME="${1:-gesture-vampnet}"
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if ! command -v conda >/dev/null 2>&1; then
  echo "Conda was not found."
  echo "Install Miniconda, reopen the terminal, and run this script again."
  exit 1
fi

if conda env list | awk '{print $1}' | grep -Fxq "$ENV_NAME"; then
  echo "Using existing Conda environment: $ENV_NAME"
else
  echo "Creating Conda environment: $ENV_NAME"
  conda create -n "$ENV_NAME" python=3.11 -y
fi

run_python() {
  conda run -n "$ENV_NAME" python "$@"
}

echo "Installing Python dependencies..."
run_python -m pip install --upgrade pip setuptools wheel
run_python -m pip install "torch==2.4.1"
run_python -m pip install -r "$ROOT_DIR/vampnet-main/requirements.txt"
run_python -m pip install -e "$ROOT_DIR/vampnet-main" --no-deps
run_python -m pip install -e "$ROOT_DIR/unloop-main"
run_python -m pip install \
  "numpy==1.26.4" \
  "mediapipe==0.10.35" \
  "opencv-python==4.10.0.84" \
  "python-osc==1.10.2"

mkdir -p \
  "$ROOT_DIR/vampnet-main/scratch" \
  "$ROOT_DIR/unloop-main/audio"

echo "Checking the installation..."
run_python -c \
  "import torch, mediapipe, cv2, pythonosc; print('Python dependencies OK')"
run_python "$ROOT_DIR/unloop-main/motion_to_unloop.py" --help >/dev/null
run_python "$ROOT_DIR/unloop-main/vamp.py" --help >/dev/null

PYTHON_PATH="$(conda run -n "$ENV_NAME" python -c 'import sys; print(sys.executable)')"

echo
echo "Setup complete."
echo "Activate the environment with:"
echo "  conda activate $ENV_NAME"
echo
echo "Paste this Python path into the Unloop Max patch:"
echo "  $PYTHON_PATH"
