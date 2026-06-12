import argbind
import shlex
import sys

from unloop.unloop import Vamp


def _normalize_max_shell_args():
    normalized = [sys.argv[0]]
    for arg in sys.argv[1:]:
        if arg in {"beatmask", "downbeats"}:
            continue
        if arg.startswith("--") and " " in arg:
            normalized.extend(shlex.split(arg))
        else:
            normalized.append(arg)
    sys.argv[:] = normalized


if __name__ == "__main__":
    _normalize_max_shell_args()
    args = argbind.parse_args()
    with argbind.scope(args):
        Vamp()
