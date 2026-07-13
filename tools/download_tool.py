#!/usr/bin/env python3

###
# Downloads various tools from GitHub releases.
#
# Usage:
#   python3 tools/download_tool.py wibo build/tools/wibo --tag 1.0.0
#
# If changes are made, please submit a PR to
# https://github.com/encounter/dtk-template
###

import argparse
import io
import os
import platform
import shutil
import stat
import tarfile
import urllib.request
import zipfile
from typing import Callable, Dict, Optional
from pathlib import Path


def binutils_url(tag):
    uname = platform.uname()
    system = uname.system.lower()
    arch = uname.machine.lower()
    if system == "darwin":
        system = "macos"
        arch = "universal"
    elif arch == "amd64":
        arch = "x86_64"

    repo = "https://github.com/encounter/gc-wii-binutils"
    return f"{repo}/releases/download/{tag}/{system}-{arch}.zip"


def compilers_url(tag: str) -> str:
    return f"https://files.decomp.dev/compilers_{tag}.zip"


def compilers_msvc_url(tag: str) -> str:
    # tag is the MSVC version, e.g. "6.5" for MSVC 6.0 SP5
    return f"https://github.com/OmniBlade/decomp.me/releases/download/msvcwin9x/msvc{tag}.tar.gz"


def dtk_url(tag: str) -> str:
    uname = platform.uname()
    suffix = ""
    system = uname.system.lower()
    if system == "darwin":
        system = "macos"
    elif system == "windows":
        suffix = ".exe"
    arch = uname.machine.lower()
    if arch == "amd64":
        arch = "x86_64"

    repo = "https://github.com/openblack/decomp-toolkit"
    return f"{repo}/releases/download/{tag}/dtk-{system}-{arch}{suffix}"


def objdiff_cli_url(tag: str) -> str:
    uname = platform.uname()
    suffix = ""
    system = uname.system.lower()
    if system == "darwin":
        system = "macos"
    elif system == "windows":
        suffix = ".exe"
    arch = uname.machine.lower()
    if arch == "amd64":
        arch = "x86_64"

    repo = "https://github.com/encounter/objdiff"
    return f"{repo}/releases/download/{tag}/objdiff-cli-{system}-{arch}{suffix}"


def sjiswrap_url(tag: str) -> str:
    repo = "https://github.com/encounter/sjiswrap"
    return f"{repo}/releases/download/{tag}/sjiswrap-windows-x86.exe"


def wibo_url(tag: str) -> str:
    uname = platform.uname()
    arch = uname.machine.lower()
    system = uname.system.lower()
    if system == "darwin":
        arch = "macos"

    repo = "https://github.com/decompals/wibo"
    return f"{repo}/releases/download/{tag}/wibo-{arch}"


def llvm_url(tag: str) -> str:
    # tag is the openblack/llvm-project release tag, e.g. "bw1-decomp-013"
    uname = platform.uname()
    system = uname.system.lower()
    if system == "windows":
        asset = "llvm-windows.zip"
    elif system == "darwin":
        asset = "llvm-macos.zip"
    else:
        asset = "llvm-ubuntu.zip"

    repo = "https://github.com/openblack/llvm-project"
    return f"{repo}/releases/download/{tag}/{asset}"


TOOLS: Dict[str, Callable[[str], str]] = {
    "binutils": binutils_url,
    "compilers": compilers_url,
    "compilers_msvc": compilers_msvc_url,
    "dtk": dtk_url,
    "llvm": llvm_url,
    "objdiff-cli": objdiff_cli_url,
    "sjiswrap": sjiswrap_url,
    "wibo": wibo_url,
}


def download(url, response, outputs) -> None:
    (output,) = outputs
    if url.endswith(".zip"):
        data = io.BytesIO(response.read())
        with zipfile.ZipFile(data) as f:
            f.extractall(output)
        # Make all files executable
        for root, _, files in os.walk(output):
            for name in files:
                os.chmod(os.path.join(root, name), 0o755)
        output.touch(mode=0o755)  # Update dir modtime
    elif url.endswith(".tar.gz") or url.endswith(".tgz"):
        data = io.BytesIO(response.read())
        output.mkdir(parents=True, exist_ok=True)
        # Extract with every path component lowercased. The archive ships
        # mixed-case names ("Include", "Bin", ...) but the build references
        # them lowercase, and on a case-sensitive FS that mismatch breaks the
        # lookup. Lowercasing during extraction (rather than renaming after)
        # makes case-variant members land in the same directory, so re-runs
        # are idempotent and never need the output dir deleted.
        with tarfile.open(fileobj=data, mode="r:gz") as t:
            for member in t.getmembers():
                member.name = member.name.lower()
                t.extract(member, output)
        # Flatten Bin/ to root so cl.exe lands directly in the output directory.
        # Overwrite existing entries so re-runs stay idempotent.
        bin_dir = output / "bin"
        if bin_dir.is_dir():
            for item in bin_dir.iterdir():
                os.replace(str(item), str(output / item.name))
            bin_dir.rmdir()
        # Make all files executable
        for root, _, files in os.walk(output):
            for name in files:
                os.chmod(os.path.join(root, name), 0o755)
        output.touch(mode=0o755)  # Update dir modtime
    else:
        with open(output, "wb") as f:
            shutil.copyfileobj(response, f)
        st = os.stat(output)
        os.chmod(output, st.st_mode | stat.S_IEXEC)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("tool", help="Tool name (or 'url' with --url)")
    parser.add_argument("output", type=Path, help="output file path")
    parser.add_argument("--tag", help="GitHub tag")
    parser.add_argument("--url", help="Direct download URL (overrides tool/tag)")
    args = parser.parse_args()

    if args.url:
        url = args.url
    else:
        if not args.tag:
            parser.error("--tag is required unless --url is given")
        url = TOOLS[args.tool](args.tag)
    outputs = [args.output]

    print(f"Downloading {url} to {args.output}")
    req = urllib.request.Request(url, headers={"User-Agent": "Mozilla/5.0"})
    try:
        with urllib.request.urlopen(req) as response:
            download(url, response, outputs)
    except urllib.error.URLError as e:
        if str(e).find("CERTIFICATE_VERIFY_FAILED") == -1:
            raise e
        try:
            import certifi
            import ssl
        except ImportError:
            print(
                '"certifi" module not found. Please install it using "python -m pip install certifi".'
            )
            return

        with urllib.request.urlopen(
            req, context=ssl.create_default_context(cafile=certifi.where())
        ) as response:
            download(url, response, outputs)


if __name__ == "__main__":
    main()
