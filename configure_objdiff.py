import argparse
import json
import subprocess
import sys

from pathlib import Path

zlib_c_files = {
    "adler32",
    "deflate",
    "infblock",
    "infcodes",
    "inffast",
    "inflate",
    "inftrees",
    "infutil",
    "trees",
    "zutil",
}

def configure_objdiff(validating: bool):
    subprocess.run(["cmake", "--workflow", "--preset", "objdiff"], check=True)

    current_dir = Path.cwd()
    cmake_build_dir = current_dir / "cmake-build-presets/objdiff"
    cpp_staging_dir_relative = Path("src/staging")
    cpp_staging_dir = current_dir / cpp_staging_dir_relative
    cpp_staging_build_dir = cmake_build_dir / "CMakeFiles/runblack_objdiff_staging.dir" / cpp_staging_dir_relative
    obj_suffix = ".obj" if sys.platform == "win32" else ".o"

    scratch_details = {
        "platform": "win32",
        "compiler": "msvc6.5",
        "preset_id": 208
    }

    # load the compile commands
    with (cmake_build_dir / "compile_commands.json").open() as f:
        compile_commands = json.load(f)
    is_valid = True
    staging_files = set()
    units: list[dict[str, str|dict]] = []
    for entry in compile_commands:
        file = Path(entry["file"])
        output = Path(entry["output"])

        if file.is_relative_to(cpp_staging_dir):
            # Don't want to include staging files
            pass
        elif file.suffix in {".rc", ".cpp"} or file.is_relative_to(current_dir / "libs"):
            # These are considered done so compare them with themselves
            file_relative = file.relative_to(current_dir)
            file_dir = file_relative.parent
            units.append({
                "name": (file_dir.relative_to("src/") / file.stem).as_posix(),
                "target_path": output.as_posix(),
                "base_path": output.as_posix(),
                "scratch": scratch_details,
                "metadata": {
                    "complete": True,
                    "source_path": file.as_posix(),
                },
            })
        elif file.suffix == ".asm" or file.suffix == ".c":
            source_suffix = ".cpp"
            if file.stem in zlib_c_files:
                source_suffix = ".c"
            staging_analog = cpp_staging_dir / f"{file.stem}{source_suffix}"
            if validating:
                staging_files.add(staging_analog)
                if not staging_analog.exists():
                    print(f"Missing staging for {file.name} -> {staging_analog.relative_to(current_dir)}", file=sys.stderr)
                    is_valid = False
                    continue
            file_relative = file.relative_to(current_dir)
            file_dir = file_relative.parent
            units.append({
                "name": (file_dir.relative_to("src/") / file.stem).as_posix(),
                "target_path": (output).as_posix(),
                "base_path": (cpp_staging_build_dir / f"{file.stem}{source_suffix}{obj_suffix}").relative_to(cmake_build_dir).as_posix(),
                "scratch": scratch_details,
                "metadata": {
                    # "complete": False,
                    "source_path": (cpp_staging_dir / f"{file.stem}{source_suffix}").as_posix(),
                },
            })
        else:
            if validating:
                print(f'Unexpected source type: "{file}" -> "{output}"', file=sys.stderr)
                is_valid = False

    if validating:
        for dirpath, _, filenames in cpp_staging_dir.walk():
            for file in filenames:
                if dirpath / file not in staging_files:
                    print(f"Orphaned file {(dirpath / file).relative_to(current_dir)} does not have a similarly named unprocessed asm file. Was it renamed?", file=sys.stderr)
                    is_valid = False

    if not is_valid:
        raise ValueError("The repo has some errors.")

    config = {
        "$schema": "https://raw.githubusercontent.com/encounter/objdiff/main/config.schema.json",
        "custom_make": "ninja",
        "custom_args": [
            "-C",
            cmake_build_dir.as_posix()
        ],
        "build_target": True,
        "build_base": True,
        "watch_patterns": [
            "*.c",
            "*.cpp",
            "*.h",
            "*.asm",
            "*.rc",
        ],
        "units": units,
    }
    with (cmake_build_dir / "objdiff.json").open("w") as f:
        json.dump(config, f, indent=2)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--validate", action="store_true",
                        help="Skip validation of staging files")
    args = parser.parse_args()
    exit(configure_objdiff(validating=args.validate))
