#!/usr/bin/env python3
"""Register the repository's custom git merge drivers in this clone's .git/config.

.gitattributes names the drivers (`merge=dtk-symbols` for config/**/symbols.txt), but git only
runs a driver its config defines, and config is not versioned. Run once per clone:

    python tools/setup-merge-drivers.py           # set up
    python tools/setup-merge-drivers.py --check   # exit 1 unless set up
    python tools/setup-merge-drivers.py --remove  # back to plain text merges

The driver runs from the checked-out tree. Setup also copies it to .git/merge-drivers/ for
branches from before it existed; rerun setup after the driver changes to refresh that copy.
"""

import argparse
from pathlib import Path
import shutil
import subprocess
import sys

# Modules the drivers import, copied next to them.
SUPPORT = ["symbols_txt.py"]

DRIVERS = {
    "dtk-symbols": ("symbols.txt, merged per symbol (tools/merge-symbols.py)", "tools/merge-symbols.py"),
}


def install_dir():
    common = subprocess.run(["git", "rev-parse", "--git-common-dir"], capture_output=True, text=True, check=True)
    return Path(common.stdout.strip()).resolve() / "merge-drivers"


def command(script, installed):
    python = Path(sys.executable).as_posix()
    copy = (installed / Path(script).name).as_posix()
    # git runs the driver through sh from the top of the work tree. The checked-out copy wins;
    # a branch from before the driver uses the copy installed here, and failing both, git
    # merge-file merges the file as text.
    return (f"sh -c 'if [ -f {script} ]; then exec \"{python}\" {script} \"$@\"; "
            f"elif [ -f \"{copy}\" ]; then exec \"{python}\" \"{copy}\" \"$@\"; "
            f"else exec git merge-file -L ours -L base -L theirs --marker-size=\"$4\" \"$2\" \"$1\" \"$3\"; fi' "
            f"merge-driver %O %A %B %L %P %S %X %Y")


def git_config(*args):
    return subprocess.run(["git", "config", "--local", *args], capture_output=True, text=True)


def main():
    p = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    mode = p.add_mutually_exclusive_group()
    mode.add_argument("--check", action="store_true", help="exit 1 unless every driver is configured")
    mode.add_argument("--remove", action="store_true", help="remove the drivers from .git/config")
    args = p.parse_args()

    missing = 0
    for name, (description, script) in DRIVERS.items():
        key = f"merge.{name}"
        if args.remove:
            git_config("--remove-section", key)
            print(f"removed {key}")
        elif args.check:
            if git_config("--get", f"{key}.driver").returncode != 0:
                print(f"{key} is not configured: run python tools/setup-merge-drivers.py")
                missing += 1
        else:
            installed = install_dir()
            installed.mkdir(exist_ok=True)
            tools = Path(__file__).resolve().parent
            for f in [Path(script).name, *SUPPORT]:
                shutil.copyfile(tools / f, installed / f)
            git_config(f"{key}.name", description)
            git_config(f"{key}.driver", command(script, installed))
            print(f"{key}.driver = {command(script, installed)}")
    return 1 if missing else 0


if __name__ == "__main__":
    sys.exit(main())
