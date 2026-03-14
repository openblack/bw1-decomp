#!/usr/bin/env python3

"""
Provide a single file that can act as a compiler on linux while forwarding the calls through wine and fixing up the arguments.
On windows, prevent cmake from thinking this is a msvc compiler and forward build commands.
"""

import os
import pathlib
import re
import shlex
import stat
import subprocess
import sys

from upgrade_coff_debug import upgrade_coff_debug


def winepath(path: pathlib.Path) -> str:
    if path.is_absolute():
        return 'Z:/' + path.as_posix().replace("/", "\\")
    return path.as_posix().replace("/", "\\")


def clang_to_msvc_commands(args: list[str], wine_path: bool) -> list[str]:
    skip_next = False
    commands = []
    for i, c in enumerate(args):
        if skip_next:
            skip_next = False
            continue
        elif c == '-c':
            commands.append('/c')
        elif c.startswith("-I"):
            commands.append('/I' + c[2:])
        elif c == '-o':
            commands.append(f'/Fo{args[i+1]}')
            skip_next = True
        elif c in ('-target', 'i686-pc-windows-gnu', '-m32', '-masm=intel', '-march=i386'):
            continue
        elif wine_path and pathlib.Path(c).exists():
            commands.append(f'Z:{c}')
        else:
            commands.append(c)
    return commands


def get_out_file_path(args) -> pathlib.Path:
    prefix = "/Fo"
    return pathlib.Path(next(i.removeprefix(prefix) for i in clang_to_msvc_commands(args, False) if i.startswith(prefix)))


def clean_cl_output(name: str, log: str, use_color: bool = False) -> str:
    lines = log.splitlines()
    # Compiler is annoying and echo's the filename, remove that
    if name.endswith(".cpp") or name.endswith(".c"):
        lines = [l for l in lines if l.strip() != name]

    result = "\n".join(lines)

    # Fix paths: remove Z: prefix and convert backslashes to forward slashes
    result = re.sub(
        r'^(\s*)(Z:)?(/[^\s:]+)',
        lambda m: m.group(1) + m.group(3).replace("\\", "/"),
        result,
        flags=re.MULTILINE
    )

    # Colorize errors and warnings if allowed
    if use_color:
        RED = "\033[31m"
        YELLOW = "\033[33m"
        WHITE = "\033[37m"
        BOLD = "\033[1m"
        RESET = "\033[0m"

        result = re.sub(
            r'^(.+?)(\(\d+\))( : )(error)( [A-Z]\d+: )(.+)$',
            rf'\1{WHITE}\2{RESET}\3{BOLD}{RED}\4{RESET}{WHITE}\5{RESET}\6',
            result,
            flags=re.MULTILINE
        )
        result = re.sub(
            r'^(.+?)(\(\d+\))( : )(warning)( [A-Z]\d+: )(.+)$',
            rf'\1{WHITE}\2{RESET}\3{BOLD}{YELLOW}\4{RESET}{WHITE}\5{RESET}\6',
            result,
            flags=re.MULTILINE
        )

    return result


def cl_call_passthrough(argv, use_color: bool):
    # Prevent CMake from identifying the compiler
    if "CMakeCXXCompilerId.cpp" in argv:
        return 1
    """Prevents cmake from complaining about mixing cl and clang on windows"""
    deps_base = pathlib.Path(argv[1]) / "_deps"
    msvc_base = deps_base / "msvc_compiler-src"
    cl_path = msvc_base / "Bin/CL.EXE"

    env = os.environ.copy()
    env["PATH"] = str(msvc_base / "Bin")
    env["INCLUDE"] = str(msvc_base / "INCLUDE")

    commands = [cl_path.as_posix(), "/nologo"] + clang_to_msvc_commands(argv[2:], False)

    # print(' '.join(argv) + ' => ' + ' '.join(commands))
    result = subprocess.run(commands, capture_output=True, env=env)

    if result.returncode != 0:
        sys.stderr.write(shlex.join(commands) + "\n")

    name = get_out_file_path(argv).name.removesuffix(".o").removesuffix(".obj")
    sys.stdout.write(clean_cl_output(name, result.stdout.decode(), use_color=use_color))
    sys.stderr.write(clean_cl_output(name, result.stderr.decode(), use_color=use_color))

    return result.returncode


def wrap_cl_call_with_wibo(argv, use_color: bool):
    deps_base = pathlib.Path(argv[1]) / "_deps"
    wibo_exe = deps_base / "wibo-src" / "wibo-i686"
    msvc_base = deps_base / "msvc_compiler-src"
    msvcrt = deps_base / "msvcrt-src"
    cl_path = msvc_base / "Bin/CL.EXE"
    env = os.environ.copy()
    env["WINEPATH"] = msvcrt.as_posix()
    commands = [wibo_exe.as_posix(), cl_path.as_posix(), "/nologo"]
    args = []
    for a in argv[2:]:
        p = pathlib.Path(a)
        if p.exists() and p.is_absolute():
            a = "Z:" + a
        args.append(a)
    commands += clang_to_msvc_commands(args, True)
    commands.insert(-2, f"/I{msvc_base.as_posix()}/Include")
    st = os.stat(wibo_exe.as_posix())
    os.chmod(wibo_exe.as_posix(), st.st_mode | stat.S_IEXEC)
    result = subprocess.run(commands, capture_output=True, env=env)
    if result.returncode != 0:
        sys.stderr.write(shlex.join(commands) + "\n")

    name = get_out_file_path(argv).name.removesuffix(".o").removesuffix(".obj")
    stdout = clean_cl_output(name, result.stdout.decode(), use_color=use_color)
    stderr = clean_cl_output(name, result.stderr.decode(), use_color=use_color)

    # Remove echoed filenames from args
    for c in args:
        if c.startswith("Z:/"):
            key = os.path.basename(c[2:])
            stdout = stdout.replace(key + '\r\n', '').replace(key + '\n', '')
            stderr = stderr.replace(key + '\r\n', '').replace(key + '\n', '')

    if stdout.strip():
        sys.stdout.write(stdout + "\n")
    sys.stderr.write(stderr)
    return result.returncode


if __name__ == "__main__":
    result = 0
    use_color = True
    if os.name == 'nt':
        result = cl_call_passthrough(sys.argv, use_color)
    else:
        result = wrap_cl_call_with_wibo(sys.argv, use_color)
    if result != 0:
        exit(result)
    try:
        out_file = get_out_file_path(sys.argv)
    except StopIteration:
        sys.stderr.write("Could not determine the out file.")
        exit(1)
    upgrade_coff_debug(out_file, out_file)
