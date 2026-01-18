#!/usr/bin/env python3

"""
Provide a single file that can act as a compiler on linux while forwarding the calls through wine and fixing up the arguments.
On windows, prevent cmake from thinking this is a msvc compiler and forward build commands.
"""

import os
import pathlib
import shlex
import stat
import subprocess
import sys


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


def cl_call_passthrough():
    # Prevent CMake from identifying the compiler
    if "CMakeCXXCompilerId.cpp" in sys.argv:
        return 1
    """Prevents cmake from complaining about mixing cl and clang on windows"""
    deps_base = pathlib.Path(sys.argv[1]) / "_deps"
    msvc_base = deps_base / "msvc_compiler-src"
    cl_path = msvc_base / "BIN/CL.EXE"

    env = os.environ.copy()
    env["PATH"] = str(msvc_base / "BIN")
    env["INCLUDE"] = str(msvc_base / "INCLUDE")

    commands = [cl_path.as_posix(), "/nologo"] + clang_to_msvc_commands(sys.argv[2:], False)

    # print(' '.join(sys.argv) + ' => ' + ' '.join(commands))
    result = subprocess.run(commands, capture_output=True, env=env)

    sys.stdout.write(result.stdout.decode())
    sys.stderr.write(result.stderr.decode())

    return result.returncode


def wrap_cl_call_with_wibo():
    deps_base = pathlib.Path(sys.argv[1]) / "_deps"
    wibo_exe = deps_base / "wibo-src" / "wibo-i686"
    msvc_base = deps_base / "msvc_compiler-src"
    msvcrt = deps_base / "msvcrt-src"
    cl_path = msvc_base / "Bin/CL.EXE"

    env = os.environ.copy()
    env["WINEPATH"] = msvcrt.as_posix()

    commands = [wibo_exe.as_posix(), cl_path.as_posix(), "/nologo", f"/I{msvc_base.as_posix()}/Include"]

    args = []
    for a in sys.argv[2:]:
        p = pathlib.Path(a)
        if p.exists() and p.is_absolute():
            a = "Z:" + a
        args.append(a)

    subs = {}
    for c in args:
        if c.startswith("Z:/"):
            subs[os.path.basename(c[2:]) + '\r\n'] = ''

    commands += clang_to_msvc_commands(args, True)

    # print(' '.join(sys.argv) + ' => ' + ' '.join(commands))
    project_root = pathlib.Path(__file__).parent.parent.parent

    st = os.stat(wibo_exe.as_posix())
    os.chmod(wibo_exe.as_posix(), st.st_mode | stat.S_IEXEC)
    result = subprocess.run(commands, capture_output=True, env=env)

    if result.returncode != 0:
        sys.stderr.write(shlex.join(commands) + "\n")

    for l in result.stdout.splitlines() + result.stderr.splitlines():
        stripped_line = l.lstrip().decode()
        if b" : " in l and (stripped_line.startswith(project_root.as_posix()) or stripped_line.startswith("Z:" + project_root.as_posix())):
            parts = l.split(b" : ")
            filename = parts[0].decode().strip().split("(")[0]
            subs[filename] = filename.removeprefix("Z:").replace("\\", "/")

    def fix_paths(string):
        for k, v in subs.items():
            string = string.replace(k, v)
        return string

    sys.stdout.write(fix_paths(result.stdout.decode()))
    sys.stderr.write(fix_paths(result.stderr.decode()))

    return result.returncode

if __name__ == "__main__":
    if os.name == 'nt':
        exit(cl_call_passthrough())
    exit(wrap_cl_call_with_wibo())
