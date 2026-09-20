#!/usr/bin/env python3
"""Plan affected original compiler edges; only --run writes build artifacts.

Examples:
  python tools/decomp-verify.py --changed
  python tools/decomp-verify.py --since HEAD~1
  python tools/decomp-verify.py --unit Game --run --compile-only
  python tools/decomp-verify.py --run --baseline build/BW1W120/baseline.json

--run checks whole-file formatting, prepares Ninja prerequisites, replays the
selected compdb commands, then runs Ninja's default build (including hashes),
explicitly refreshes the report and calls decomp-regress.py. --compile-only
stops after compilation. --format additionally permits formatting the selected
input files, never their transitive dependencies. Baselines are read-only inputs.

The include scan covers inactive branches and MSVC's includer-directory search.
Unresolved/macro includes select only their dependent TUs conservatively. Deleted
headers require all TUs: the current tree cannot reconstruct their old closure.
Compiler commands come from Ninja, not clangd's transformed compile database.
"""

import argparse
from collections import defaultdict, deque
from concurrent.futures import ThreadPoolExecutor
from dataclasses import dataclass, field
from functools import lru_cache
import hashlib
import json
import os
from pathlib import Path
import re
import shlex
import subprocess
import sys
import tempfile


# Lazy shared-helper imports must not create __pycache__ during a read-only plan.
sys.dont_write_bytecode = True
ROOT = Path(__file__).resolve().parent.parent
SOURCE_SUFFIXES = {'.c', '.cc', '.cp', '.cpp', '.cxx', '.c++'}
HEADER_SUFFIXES = {'.h', '.hh', '.hp', '.hpp', '.hxx', '.h++', '.inl', '.inc', '.ipp', '.tpp', '.pch', '.pch++'}
DIRECTIVE = re.compile(r'^\s*#\s*(include|include_next|import)\s+([^\r\n]+)', re.M)
COMMENTS = re.compile(r'"(?:\\.|[^"\\])*"|\'(?:\\.|[^\'\\])*\'|/\*.*?\*/|//[^\r\n]*', re.S)


def absolute_path(path, directory):
    """Filesystem path retaining spelling for compiler working directories."""
    return Path(os.path.abspath(directory / str(path).replace('\\', '/')))


def canonical(path, directory):
    return Path(os.path.normcase(str(absolute_path(path, directory))))


def capture(argv, root):
    result = subprocess.run(argv, cwd=root, capture_output=True, text=True, errors='replace')
    if result.returncode:
        raise RuntimeError(f"Command failed: {argv!r}\n{result.stderr.strip() or result.stdout.strip()}")
    return result.stdout


def command_words(command, windows=None):
    """CRT-style Windows quoting (including backslashes); shlex on POSIX.

    Kept platform-independent so Windows command fixtures can run on any host.
    This tokenizes command arguments, not shell operators or environment syntax.
    """
    if windows is None:
        windows = os.name == 'nt'
    if not windows:
        return shlex.split(command)
    words, word = [], []
    quoted = started = False
    i = 0
    while i < len(command):
        char = command[i]
        if char in ' \t' and not quoted:
            if started:
                words.append(''.join(word))
                word, started = [], False
            i += 1
            continue
        started = True
        if char == '\\':
            end = i
            while end < len(command) and command[end] == '\\':
                end += 1
            count = end - i
            if end < len(command) and command[end] == '"':
                word.extend('\\' * (count // 2))
                if count % 2:
                    word.append('"')
                    i = end + 1
                    continue
                i = end
            else:
                word.extend('\\' * count)
                i = end
                continue
        if command[i] == '"':
            if quoted and i + 1 < len(command) and command[i + 1] == '"':
                word.append('"')
                i += 2
                continue
            quoted = not quoted
        else:
            word.append(command[i])
        i += 1
    if quoted:
        raise ValueError('Unterminated quote in compiler command')
    if started:
        words.append(''.join(word))
    return words


def changed_paths(root, since=None):
    commands = [
        ['diff', '--name-only', '--no-renames', '-z'],
        ['diff', '--cached', '--name-only', '--no-renames', '-z'],
        ['ls-files', '--others', '--exclude-standard', '-z'],
    ]
    if since:
        # Resolve first: do not interpret a supplied ref as another Git option.
        ref = capture(['git', 'rev-parse', '--verify', '--end-of-options', since + '^{commit}'], root).strip()
        commands.append(['diff', '--name-only', '--no-renames', '-z', ref, 'HEAD', '--'])
    return {canonical(p, root) for args in commands
            for p in capture(['git', *args], root).split('\0') if p}


@dataclass
class Edge:
    source: Path
    output: Path
    directory: Path
    command: str
    target: str
    roots: tuple = ()
    forced: tuple = ()
    shared_outputs: tuple = ()
    reasons: list = field(default_factory=list)


def compile_edges(records, root, windows=None):
    if os.environ.get('CL') or os.environ.get('_CL_'):
        raise RuntimeError('Clear CL/_CL_ overrides before verifying original compiler flags.')
    edges, outputs = [], {}
    for record in records:
        directory = absolute_path(record['directory'], root)
        source = canonical(record['file'], directory)
        output = canonical(record['output'], directory)
        if source.suffix.lower() not in SOURCE_SUFFIXES:
            raise ValueError(f'Unexpected CL input: {source}')
        words = command_words(record['command'], windows)
        roots, forced, shared = [], [], []
        i = 0
        while i < len(words):
            token = words[i]
            if token.startswith('@'):
                raise ValueError(f'Response file is not supported for exact replay: {token}')
            for flag, dest in (('/FI', forced), ('-FI', forced), ('/I', roots), ('-I', roots),
                               ('/Fd', shared), ('/Fp', shared)):
                if token.startswith(flag):
                    value = token[len(flag):]
                    if not value:
                        i += 1
                        if i == len(words):
                            raise ValueError(f'Missing value for {flag}')
                        value = words[i]
                    dest.append(value)
                    break
            i += 1
        if '/X' not in words and '-X' not in words:
            roots.extend(p for p in os.environ.get('INCLUDE', '').split(';') if p)
        if (any(w in ('/Zi', '/ZI', '-Zi', '-ZI') for w in words)
                and not any(w.startswith(('/Fd', '-Fd')) for w in words)):
            shared.append('vc60.pdb')
        if any(w.startswith(('/Yc', '-Yc')) for w in words):
            raise ValueError('PCH-producing edges require Ninja scheduling; exact parallel replay is unsupported.')
        # Ninja node names remain case-sensitive even on Windows. Never derive
        # them from a normcase filesystem key (nor rewrite their slash spelling).
        edge = Edge(source, output, directory, record['command'], record['output'],
                    tuple(dict.fromkeys(canonical(p, directory) for p in roots)), tuple(forced),
                    tuple(canonical(p, directory) for p in shared))
        if output in outputs:
            if outputs[output] != edge:
                raise ValueError(f'Conflicting compiler edges for {output}')
            continue
        outputs[output] = edge
        edges.append(edge)
    if not edges:
        raise RuntimeError('No CL edges in Ninja compdb; configure a Windows game version first.')
    return edges


class IncludeScanner:
    def __init__(self, root, changed_headers):
        self.root = root
        self.changed_headers = changed_headers

    @lru_cache(maxsize=None)
    def directives(self, path):
        text = path.read_text(encoding='utf-8', errors='replace')
        text = re.sub(r'\\\r?\n', '', text)
        text = COMMENTS.sub(lambda m: '\n' * m[0].count('\n') + ' '
                            if m[0].startswith(('//', '/*')) else m[0], text)
        return DIRECTIVE.findall(text)

    def select(self, edges, changed):
        groups = defaultdict(list)
        for edge in edges:
            groups[edge.roots].append(edge)
        deleted = sorted(p for p in self.changed_headers if not p.is_file())
        for roots, group in groups.items():
            # A graph superset models MSVC's search through includer ancestors
            # without exploding on cycles/diamond-shaped header graphs.
            suffixes = defaultdict(set)
            for base in dict.fromkeys((self.root / 'src', self.root / 'include', *roots)):
                if base.is_dir():
                    for path in base.rglob('*'):
                        if path.is_file():
                            parts = path.relative_to(base).parts
                            for start in range(len(parts)):
                                suffixes['/'.join(parts[start:]).lower()].add(canonical(path, self.root))

            def resolve(name, owner, quoted):
                name = name.replace('\\', '/')
                candidates = ([canonical(name, owner.parent)] if quoted else [])
                candidates += [canonical(name, base) for base in roots]
                found = set()
                for candidate in candidates:
                    if candidate.is_file() or candidate in self.changed_headers:
                        found.add(candidate)
                        break
                if quoted or not found:
                    found.update(suffixes.get(name.lower(), ()))
                    if name.startswith('../'):
                        found.update(suffixes.get(Path(name).name.lower(), ()))
                return found

            reverse, uncertain = defaultdict(set), defaultdict(set)
            pending = deque(edge.source for edge in group)

            def include(owner, kind, operand):
                match = re.fullmatch(r'"([^"\r\n]+)"\s*|<([^>\r\n]+)>\s*', operand)
                if not match or kind == 'include_next':
                    uncertain[owner].add(f'{owner}: {kind} {operand.strip()} (macro/include_next)')
                    return
                name = match[1] or match[2]
                dependencies = resolve(name, owner, match[1] is not None)
                if not dependencies:
                    uncertain[owner].add(f'{owner}: unresolved include {name}')
                for dependency in dependencies:
                    reverse[dependency].add(owner)
                    pending.append(dependency)

            for edge in group:
                for name in edge.forced:
                    include(edge.source, 'include', '"' + name + '"')
            visited = set()
            while pending:
                owner = pending.popleft()
                if owner in visited:
                    continue
                visited.add(owner)
                if not owner.is_file():
                    uncertain[owner].add(f'{owner}: missing configured source/header')
                    continue
                for kind, operand in self.directives(owner):
                    include(owner, kind, operand.strip())

            def propagate(seeds):
                reached = set(seeds)
                queue = deque(reached)
                while queue:
                    for parent in reverse[queue.popleft()]:
                        if parent not in reached:
                            reached.add(parent)
                            queue.append(parent)
                return reached

            affected = propagate(self.changed_headers)
            fallback = propagate(uncertain) if self.changed_headers else set()
            causes_by_source = defaultdict(list)
            if fallback and not deleted:
                sources = {edge.source for edge in group}
                for owner, reasons in uncertain.items():
                    for source in propagate([owner]) & sources:
                        causes_by_source[source].extend(sorted(reasons))
            for edge in group:
                if edge.source in changed:
                    edge.reasons.append('changed source')
                if edge.source in affected:
                    edge.reasons.append('transitive changed header')
                if deleted:
                    edge.reasons.append('conservative: deleted header old closure unavailable: ' +
                                        ', '.join(str(p) for p in deleted))
                elif edge.source in fallback:
                    # Report a real reachable uncertainty, not an unexplained
                    # global fallback. Limit display, not traversal coverage.
                    causes = causes_by_source[edge.source]
                    edge.reasons.append('conservative: ' + causes[0] +
                                        (f' (+{len(causes) - 1} other sites)' if len(causes) > 1 else ''))
        return [edge for edge in edges if edge.reasons]


def select_edges(edges, root, changed=None, unit=None, source=None):
    if unit or source:
        try:
            from decomp_common import resolve_unit
        except ModuleNotFoundError as error:
            raise RuntimeError('tools/decomp_common.py is required for --unit/--source selection.') from error
        resolved = resolve_unit(unit=unit, source=source, root=root)
        base = resolved.get('base_path')
        if not base:
            raise ValueError('Selected unit has no buildable base_path')
        selected = [edge for edge in edges if edge.output == canonical(base, root)]
        if not selected:
            raise ValueError(f'Selected unit has no original CL edge: {base}')
        for edge in selected:
            edge.reasons.append('explicit unit/source')
        return selected, {edge.source for edge in selected}, []
    changed = changed or set()
    sources = {p for p in changed if p.suffix.lower() in SOURCE_SUFFIXES}
    headers = {p for p in changed if p.suffix.lower() in HEADER_SUFFIXES}
    problems = [f'Unregistered changed/new source: {p}' for p in sorted(sources - {e.source for e in edges})]
    problems += [f'Deleted source: {p}' for p in sorted(sources) if not p.is_file()]
    # No need to scan the tree when only source files changed.
    if headers:
        selected = IncludeScanner(root, headers).select(edges, changed)
    else:
        selected = [edge for edge in edges if edge.source in sources]
        for edge in selected:
            edge.reasons.append('changed source')
    return selected, sources | headers, problems


def prerequisites(ninja, edge, root):
    text = capture([ninja, '-t', 'query', edge.target], root)
    inputs, in_inputs = [], False
    for line in text.splitlines():
        if line.startswith('  input:'):
            if line.strip() != 'input: cl':
                raise RuntimeError(f'Compiler rule changed for {edge.target}')
            in_inputs = True
        elif line.startswith('  outputs:'):
            in_inputs = False
        elif in_inputs and line.startswith('    '):
            name = line.strip().lstrip('|').strip()
            if canonical(name, root) != edge.source:
                inputs.append(name)
    commands = capture([ninja, '-t', 'commands', edge.target], root).splitlines()
    if not commands or commands[-1] != edge.command:
        raise RuntimeError(f'Original compiler command changed for {edge.target}')
    return inputs


def diagnostics(text):
    lines = text.splitlines()
    relevant = [line for line in lines if re.search(r'error|fatal|failed|undefined|mismatch', line, re.I)
                and not re.search(r'\bwarning\b', line, re.I)]
    return '\n'.join((relevant or lines[-8:])[:12])


def regression_summary(text):
    lines = text.splitlines()
    summary = [line for line in lines if line.startswith(('Regressions: ', 'Report freshness: ',
                                                         'Current-input check failed: '))]
    if not any(line.startswith('Regressions: ') for line in summary):
        return ''
    changed = sum(bool(re.fullmatch(r'\S.* \[(both|added|removed)\]', line)) for line in lines)
    summary.append(f'Changed units: {changed}')
    return '\n'.join(summary)


def logged(argv, root, log):
    """Stream floods to disk; print only status and useful failure diagnostics."""
    with log.open('w', encoding='utf-8') as stream:
        stream.write(f'{argv!r}\n')
        stream.flush()
        try:
            result = subprocess.run(argv, cwd=root, stdout=stream, stderr=subprocess.STDOUT)
            code = result.returncode
        except OSError as error:
            stream.write(str(error) + '\n')
            code = 127
    print(f'{"OK" if code == 0 else "FAIL"} {log.stem} (log: {log})', flush=True)
    text = log.read_text(encoding='utf-8', errors='replace') if code or log.stem == 'regressions' else ''
    summary = regression_summary(text) if log.stem == 'regressions' else ''
    if summary:
        print(summary, flush=True)
    if code and not (summary and code == 1):
        print(diagnostics(text), flush=True)
    return code


def exact_argv(command):
    # CreateProcess accepts the original string on Windows. POSIX Ninja uses a
    # shell (e.g. Wine environment assignments), so retain that exact behavior.
    return command if os.name == 'nt' else ['/bin/sh', '-c', command]


def format_files(files, root):
    result = []
    for path in sorted(files):
        if not path.is_file():
            continue
        if not path.resolve().is_relative_to(root.resolve()) or path.is_symlink():
            raise ValueError(f'Refusing to format outside the intended repository files: {path}')
        if path.suffix.lower() in SOURCE_SUFFIXES | HEADER_SUFFIXES:
            result.append(path)
    return result


def validate_baseline(path, outputs):
    if not path or not path.is_file():
        raise ValueError('Full --run requires --baseline PATH naming an existing report; create it before editing.')
    for output in outputs:
        if path.resolve() == output.resolve() or (output.exists() and os.path.samefile(path, output)):
            raise ValueError(f'Baseline must not alias a generated output: {output}')
    with path.open(encoding='utf-8') as stream:
        data = json.load(stream)
    if isinstance(data, dict) and data.get('format') == 'decomp-regress-snapshot-v1':
        data = data.get('report')
    if not isinstance(data, dict) or 'units' not in data or 'measures' not in data:
        raise ValueError('Baseline is not an objdiff report (expected units and measures).')
    return hashlib.sha256(path.read_bytes()).digest()


def report_edge(ninja, root):
    records = json.loads(capture([ninja, '-t', 'compdb', 'report'], root))
    reports = [r for r in records if Path(r['output'].replace('\\', '/')).name == 'report.json']
    if len(reports) != 1:
        raise ValueError('Expected exactly one configured report.json generation edge.')
    return reports[0]


def execute(args, root, selected, files):
    report = None
    baseline_digest = None
    if not args.compile_only:
        report = report_edge(args.ninja, root)
        report_path = canonical(report['output'], root)
        baseline_digest = validate_baseline(args.baseline, [report_path, report_path.with_name('report_changes.json'),
                                                           *(e.output for e in selected),
                                                           *(p for e in selected for p in e.shared_outputs), *files])
        if not (root / 'tools/decomp-regress.py').is_file():
            raise ValueError('tools/decomp-regress.py is required for full verification.')
    # Resolve exact commands and dependencies before any mutation.
    deps = sorted({dep for edge in selected for dep in prerequisites(args.ninja, edge, root)})
    jobs = args.jobs
    owners = {}
    for edge in selected:
        for path in edge.shared_outputs:
            if path in owners and owners[path] != edge.output:
                jobs = 1
            owners[path] = edge.output
    if jobs != args.jobs:
        print('Shared compiler side outputs detected; serializing exact command replay.')
    base = args.log_dir or root / 'build/decomp-verify'
    if args.baseline and (args.baseline.resolve() == base.resolve() or base.resolve().is_relative_to(args.baseline.resolve())):
        raise ValueError('Log directory conflicts with baseline input.')
    base.mkdir(parents=True, exist_ok=True)
    logs = Path(tempfile.mkdtemp(prefix='run-', dir=base))

    def step(label, argv, cwd=root):
        return logged(argv, cwd, logs / (label + '.log')) == 0

    for index, path in enumerate(files):
        flags = ['-i'] if args.format else ['--dry-run', '--Werror']
        if not step(f'format-{index:04d}-{path.name}', [args.clang_format, *flags, str(path)]):
            return 1
    # Build only prerequisite targets, not the selected objects: otherwise an
    # ordinary dirty object would be compiled twice. Ninja owns generated files.
    for start in range(0, len(deps), 64):
        if not step(f'prerequisites-{start // 64}', [args.ninja, '-j', str(jobs), *deps[start:start + 64]]):
            return 1
    # Prerequisites may regenerate build.ninja. Refuse to replay stale flags.
    for edge in selected:
        prerequisites(args.ninja, edge, root)
        edge.output.parent.mkdir(parents=True, exist_ok=True)

    def compile_one(item):
        index, edge = item
        return step(f'compile-{index:04d}-{edge.source.name}', exact_argv(edge.command), edge.directory)

    with ThreadPoolExecutor(max_workers=jobs) as pool:
        results = list(pool.map(compile_one, enumerate(selected)))
    print(f'Compiled {len(results)} original edges; failures: {results.count(False)}')
    if not all(results):
        return 1
    if args.compile_only:
        return 0
    if not step('ninja-default-hashes', [args.ninja, '-j', str(jobs)]):
        return 1
    # Re-read after potential configuration regeneration; never trust Ninja's
    # report timestamps after direct compiler replay.
    report = report_edge(args.ninja, root)
    validate_baseline(args.baseline, [canonical(report['output'], root)])
    if not step('report-refresh', exact_argv(report['command']), absolute_path(report['directory'], root)):
        return 1
    if hashlib.sha256(args.baseline.read_bytes()).digest() != baseline_digest:
        raise RuntimeError('Baseline changed during verification; refusing a misleading comparison.')
    return 0 if step('regressions', [sys.executable, str(root / 'tools/decomp-regress.py'),
                                    '--baseline', str(args.baseline),
                                    '--report', str(canonical(report['output'], root)),
                                    '--fail-on-regression']) else 1


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument('--repo', type=Path, default=ROOT)
    selection = parser.add_mutually_exclusive_group()
    selection.add_argument('--changed', action='store_true', help='staged, unstaged and untracked C/C++ inputs (default)')
    selection.add_argument('--since', metavar='REF', help='REF..HEAD plus all working-tree changes')
    selection.add_argument('--unit', help='objdiff unit name or unambiguous short name')
    selection.add_argument('--source', help='configured source path')
    mode = parser.add_mutually_exclusive_group()
    mode.add_argument('--list', action='store_true', help='read-only plan (default)')
    mode.add_argument('--run', action='store_true', help='execute checks and write build artifacts/logs')
    parser.add_argument('--compile-only', action='store_true', help='format check + prerequisites + selected compiles only')
    parser.add_argument('--format', action='store_true', help='with --run, format selected input files in place')
    parser.add_argument('--baseline', type=Path, help='existing pre-edit objdiff report; never generated or overwritten')
    parser.add_argument('--log-dir', type=Path, help='parent for unique run log directories (default build/decomp-verify)')
    parser.add_argument('--jobs', type=int, default=min(4, os.cpu_count() or 1), help='concurrency, 1..64 (default at most 4)')
    parser.add_argument('--ninja', default='ninja.exe' if os.name == 'nt' else 'ninja')
    parser.add_argument('--clang-format', default='clang-format.exe' if os.name == 'nt' else 'clang-format')
    args = parser.parse_args(argv)
    if args.format and not args.run:
        parser.error('--format requires --run')
    if not 1 <= args.jobs <= 64:
        parser.error('--jobs must be between 1 and 64')
    root = args.repo.resolve()
    if args.baseline:
        args.baseline = canonical(args.baseline, root)
    if args.log_dir:
        args.log_dir = canonical(args.log_dir, root)
    edges = compile_edges(json.loads(capture([args.ninja, '-t', 'compdb', 'cl'], root)), root)
    changed = None if args.unit or args.source else changed_paths(root, args.since)
    selected, inputs, problems = select_edges(edges, root, changed, args.unit, args.source)
    files = format_files(inputs, root)
    print(f'{"RUN" if args.run else "PLAN (read-only)"}: {len(selected)} / {len(edges)} original CL edges')
    for edge in selected:
        print(f'  {edge.target} [{"; ".join(edge.reasons)}]')
        if not edge.source.is_file():
            problems.append(f'Missing configured source: {edge.source}')
    print(f'Whole-file format {"write" if args.format else "check"}: {len(files)} selected input files')
    for path in files:
        print(f'  {path.relative_to(root)}')
    print('Pipeline: formatting -> Ninja prerequisites -> original compilers' +
          ('' if args.compile_only else ' -> Ninja default/hash checks -> explicit report refresh -> regressions'))
    if not args.compile_only:
        print(f'Baseline (read-only): {args.baseline or "REQUIRED for --run; create before editing"}')
    for problem in problems:
        print('INCOMPLETE: ' + problem)
    if problems:
        return 1
    if not args.run:
        return 0
    return execute(args, root, selected, files)


if __name__ == '__main__':
    try:
        sys.exit(main())
    except (RuntimeError, OSError, ValueError, KeyError) as error:
        print(f'ERROR: {error}', file=sys.stderr)
        sys.exit(2)
