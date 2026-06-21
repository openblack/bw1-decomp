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
import hashlib
import io
import os
import platform
import shutil
import stat
import struct
import tarfile
import tempfile
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


def msvc65_disc_url(tag: str) -> str:
    # tag is the Internet Archive item id for the genuine Microsoft Visual C++
    # 6.0 (SP5) install CD. The item ships the disc as a single .7z wrapping a
    # raw CD image (.mdf); the static libs we need live in VC98\Lib inside its
    # ISO9660 filesystem and are extracted by output id at build time (see
    # MSVC65_DISC_MEMBERS).
    return (
        f"https://archive.org/download/{tag}/"
        "2001-03_X08-02111_X06-21660_CD_ROM.7z"
    )


# Libraries pulled from the disc, keyed by output id. Each maps to the member's
# ISO9660 path and the sha256 of the extracted file (verified after extraction).
MSVC65_DISC_MEMBERS = {
    "libcmt": (
        "enu/vc98/lib/LIBCMT.LIB",
        "28b9f04962378ec4668072f37d7fd2835cd6cacc17b40cf22002c57bd8e76714",
    ),
    "libcpmt": (
        "enu/vc98/lib/LIBCPMT.LIB",
        "08cd1b3ba2eab087c2d2acabf7a6919362aff59ed87141f167cbe12bee6a732c",
    ),
}

_RAW_SECTOR = 2448  # raw CD block size in this image
_DATA_OFF = 16      # 12-byte sync + 4-byte header precede the user data
_DATA_LEN = 2048    # ISO9660 logical sector size


def _iso_read_lba(img: io.BufferedReader, lba: int, count: int = 1) -> bytes:
    """Read `count` logical (2048-byte) sectors starting at `lba` from the raw
    image, stripping each raw block's sync/header/subchannel."""
    out = bytearray()
    for i in range(count):
        img.seek((lba + i) * _RAW_SECTOR + _DATA_OFF)
        out += img.read(_DATA_LEN)
    return bytes(out)


def _iso_walk(img: io.BufferedReader, extent_lba: int, length: int):
    """Yield (name, lba, size, is_dir) for each entry in a directory extent."""
    n = (length + _DATA_LEN - 1) // _DATA_LEN
    data = _iso_read_lba(img, extent_lba, n)
    off = 0
    while off < length:
        rec_len = data[off]
        if rec_len == 0:
            # Directory records never straddle a sector; skip the tail padding.
            off = ((off // _DATA_LEN) + 1) * _DATA_LEN
            continue
        ext_lba = struct.unpack_from("<I", data, off + 2)[0]
        size = struct.unpack_from("<I", data, off + 10)[0]
        flags = data[off + 25]
        name_len = data[off + 32]
        raw = data[off + 33:off + 33 + name_len]
        if raw in (b"\x00", b"\x01"):  # "." / ".."
            name = "." if raw == b"\x00" else ".."
        else:
            name = raw.split(b";")[0].decode("ascii", "replace")
        yield name, ext_lba, size, bool(flags & 0x02)
        off += rec_len


def _iso_extract(img: io.BufferedReader, path: str) -> bytes:
    """Resolve `path` (case-insensitive) through the ISO9660 tree and return its
    bytes. The Primary Volume Descriptor sits at LBA 16; its root directory
    record is the 34 bytes at offset 156."""
    pvd = _iso_read_lba(img, 16)
    if pvd[1:6] != b"CD001":
        raise ValueError("not an ISO9660 image (no CD001 at LBA 16)")
    root = pvd[156:156 + 34]
    lba = struct.unpack_from("<I", root, 2)[0]
    size = struct.unpack_from("<I", root, 10)[0]
    for part in path.strip("/").split("/"):
        found = None
        for name, e, sz, is_dir in _iso_walk(img, lba, size):
            if name.upper() == part.upper():
                found = (e, sz)
                break
        if not found:
            raise FileNotFoundError(f"{path} (missing component '{part}')")
        lba, size = found
    n = (size + _DATA_LEN - 1) // _DATA_LEN
    return _iso_read_lba(img, lba, n)[:size]


def _extract_lib_from_disc(response, output: Path) -> None:
    member, expected_sha = MSVC65_DISC_MEMBERS[output.stem]
    try:
        import py7zr
    except ImportError:
        raise SystemExit(
            f'The "py7zr" module is required to extract {member} from the SP5 '
            'disc image. Install it with: python -m pip install py7zr'
        )
    output.parent.mkdir(parents=True, exist_ok=True)
    with tempfile.TemporaryDirectory() as tmp:
        tmp = Path(tmp)
        archive = tmp / "sp5.7z"
        print(f"  streaming disc archive to {archive} ...")
        with open(archive, "wb") as f:
            shutil.copyfileobj(response, f)
        print("  extracting CD image from archive ...")
        with py7zr.SevenZipFile(archive, "r") as z:
            mdf_name = next(
                (n for n in z.getnames() if n.lower().endswith((".mdf", ".iso"))),
                None,
            )
            if mdf_name is None:
                raise SystemExit("no .mdf/.iso disc image found inside the 7z")
            z.extract(path=tmp, targets=[mdf_name])
        image_path = tmp / mdf_name
        print(f"  reading {member} from ISO9660 filesystem ...")
        with open(image_path, "rb") as img:
            data = _iso_extract(img, member)
    digest = hashlib.sha256(data).hexdigest()
    if digest != expected_sha:
        raise SystemExit(
            f"extracted {member} sha256 {digest} != expected "
            f"{expected_sha}; wrong disc image?"
        )
    with open(output, "wb") as f:
        f.write(data)
    print(f"  wrote {output} ({len(data)} bytes, sha256 verified)")


def llvm_url(tag: str) -> str:
    # tag is the openblack/llvm-project release tag, e.g. "bw1-decomp-013"
    uname = platform.uname()
    system = uname.system.lower()
    if system == "windows":
        asset = "llvm-windows.zip"
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
    "msvc65_libs": msvc65_disc_url,
    "objdiff-cli": objdiff_cli_url,
    "sjiswrap": sjiswrap_url,
    "wibo": wibo_url,
}


def download(url, response, output) -> None:
    if url.endswith(".7z"):
        # Disc image (MSVC 6.0 SP5 CD): extract the requested static lib from it.
        _extract_lib_from_disc(response, output)
    elif url.endswith(".zip"):
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
    output = Path(args.output)

    print(f"Downloading {url} to {output}")
    req = urllib.request.Request(url, headers={"User-Agent": "Mozilla/5.0"})
    try:
        with urllib.request.urlopen(req) as response:
            download(url, response, output)
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
            download(url, response, output)


if __name__ == "__main__":
    main()
