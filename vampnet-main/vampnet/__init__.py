import json
import os
import warnings

from . import modules
from pathlib import Path
from . import scheduler
from .interface import Interface
from .modules.transformer import VampNet


__version__ = "0.0.1"

ROOT = Path(__file__).parent.parent
MODELS_DIR = ROOT / "models" / "vampnet"
FINETUNED_CACHE_FILE = MODELS_DIR / "available_finetuned.json"
FINETUNED_MANIFEST = ROOT / "conf" / "available_finetuned.json"

# Shipped fallback when Hub and local cache are unavailable (models/ is gitignored).
BUNDLED_FINETUNED = [
    "cat10",
    "choir",
    "lazaro-ros",
    "lazaro-ros-sep",
    "machines",
    "march-31",
    "n64",
    "nesquik",
    "opera",
    "orchestral",
    "percussion",
    "sample-instrument",
    "sax-new",
    "sax-sep",
    "saxophone",
    "supermetroid",
    "xeno-canto",
]

from huggingface_hub import hf_hub_download, HfFileSystem
DEFAULT_HF_MODEL_REPO_DIR = ROOT / "DEFAULT_HF_MODEL_REPO"
DEFAULT_HF_MODEL_REPO = DEFAULT_HF_MODEL_REPO_DIR.read_text().strip()
# DEFAULT_HF_MODEL_REPO = "hugggof/vampnet"
FS = HfFileSystem()

def download_codec():
    # from dac.model.dac import DAC
    from lac.model.lac import LAC as DAC
    local_codec_path = MODELS_DIR / "codec.pth"
    if local_codec_path.exists():
        return str(local_codec_path)

    repo_id = DEFAULT_HF_MODEL_REPO
    filename = "codec.pth"
    codec_path = hf_hub_download(
        repo_id=repo_id,
        filename=filename,
        subfolder=None, 
        local_dir=MODELS_DIR
    )
    return codec_path
    

def download_default():
    filenames = ["coarse.pth", "c2f.pth", "wavebeat.pth"]
    repo_id = DEFAULT_HF_MODEL_REPO
    paths = []
    for filename in filenames:
        path = f"{MODELS_DIR}/{filename}"
        if not Path(path).exists():
            print(f"{path} does not exist, downloading")
            FS.download(f"{repo_id}/{filename}", path)
        paths.append(path)
    
    # load the models
    return paths[0], paths[1]


def download_finetuned(name, repo_id=DEFAULT_HF_MODEL_REPO):
    filenames = ["coarse.pth", "c2f.pth"]
    paths = []
    for filename in filenames:
        path = f"{MODELS_DIR}/loras/{name}/{filename}"
        if not Path(path).exists():
            print(f"{path} does not exist, downloading")
            FS.download(f"{repo_id}/loras/{name}/{filename}", path)
        paths.append(path)
    
    # load the models
    return paths[0], paths[1]
    
def _list_local_finetuned():
    loras_dir = MODELS_DIR / "loras"
    if not loras_dir.exists():
        return []
    names = []
    for model_dir in loras_dir.iterdir():
        if not model_dir.is_dir():
            continue
        if (model_dir / "c2f.pth").exists() and (model_dir / "coarse.pth").exists():
            names.append(model_dir.name)
    return names


def _read_finetuned_json(path: Path):
    try:
        data = json.loads(path.read_text())
        return list(data) if isinstance(data, list) else []
    except (json.JSONDecodeError, OSError):
        return []


def _load_finetuned_cache():
    for path in (FINETUNED_MANIFEST, FINETUNED_CACHE_FILE):
        if path.exists():
            names = _read_finetuned_json(path)
            if names:
                return names
    return list(BUNDLED_FINETUNED)


def _save_finetuned_cache(names):
    MODELS_DIR.mkdir(parents=True, exist_ok=True)
    FINETUNED_CACHE_FILE.write_text(json.dumps(sorted(set(names)), indent=2) + "\n")


def _merge_finetuned_names(*name_lists):
    merged = set()
    for names in name_lists:
        merged.update(names)
    return sorted(merged)


def _list_finetuned_from_hub(repo_id=DEFAULT_HF_MODEL_REPO):
    diritems = FS.listdir(f"{repo_id}/loras")
    valid_diritems = []
    for item in diritems:
        model_file_items = FS.listdir(item["name"])
        item_names = [item["name"].split("/")[-1] for item in model_file_items]
        c2f_exists = "c2f.pth" in item_names
        coarse_exists = "coarse.pth" in item_names
        if c2f_exists and coarse_exists:
            valid_diritems.append(item)
    return [item["name"].split("/")[-1] for item in valid_diritems]


def list_finetuned(repo_id=DEFAULT_HF_MODEL_REPO):
    cached = _load_finetuned_cache()
    local = _list_local_finetuned()

    if os.environ.get("VAMPNET_REFRESH_MODELS", "").lower() not in {"1", "true", "yes"}:
        return _merge_finetuned_names(cached, local, BUNDLED_FINETUNED)

    try:
        names = _list_finetuned_from_hub(repo_id)
        _save_finetuned_cache(names)
        return _merge_finetuned_names(names, local)
    except Exception as e:
        warnings.warn(
            f"Could not reach Hugging Face Hub ({e}). "
            "Using cached / downloaded finetuned model names for the dropdown."
        )
        return _merge_finetuned_names(cached, local, BUNDLED_FINETUNED)
