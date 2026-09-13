"""Verification tests use tiny temporary projects; no game compiles or downloads."""

from contextlib import redirect_stdout
import argparse
import importlib.util
import io
import json
import os
from pathlib import Path
import subprocess
import sys
import tempfile
import types
import unittest
from unittest.mock import patch


SCRIPT = Path(__file__).resolve().parents[1] / 'decomp-verify.py'
SPEC = importlib.util.spec_from_file_location('decomp_verify', SCRIPT)
verify = importlib.util.module_from_spec(SPEC)
sys.modules[SPEC.name] = verify
SPEC.loader.exec_module(verify)


class Fixture(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name).resolve()
        self.env = patch.dict(os.environ, {'CL': '', '_CL_': '', 'INCLUDE': ''})
        self.env.start()
        self.addCleanup(self.env.stop)

    def write(self, name, text=''):
        path = self.root / name
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(text, encoding='utf-8')
        return verify.canonical(path, self.root)

    def edge(self, name, text='', flags=''):
        self.write('src/' + name + '.cpp', text)
        record = {'file': 'src/' + name + '.cpp', 'directory': str(self.root),
                  'output': 'build/' + name + '.o',
                  'command': f'cl.exe /I include /I generated {flags} /c src/{name}.cpp /Fobuild/{name}.o'}
        return verify.compile_edges([record], self.root, windows=True)[0]


class CommandTests(Fixture):
    def test_windows_roundtrip_backslashes_spaces_empty_and_quotes(self):
        args = [r'C:\Program Files\MSVC\cl.exe', '/I', 'C:\\SDK path\\',
                r'/DNAME="value"', '', r'src\Black\Game.cpp', 'embedded"quote', 'two\\\\"quotes']
        self.assertEqual(verify.command_words(subprocess.list2cmdline(args), windows=True), args)

    def test_windows_adjacent_quoted_include_and_posix_shell_quoting(self):
        self.assertEqual(verify.command_words(r'cl /I"C:\some path\include" /FI "forced h.h"', True),
                         ['cl', r'/IC:\some path\include', '/FI', 'forced h.h'])
        self.assertEqual(verify.command_words("wine 'path with space/cl.exe' -I 'sdk dir'", False),
                         ['wine', 'path with space/cl.exe', '-I', 'sdk dir'])
        with self.assertRaises(ValueError):
            verify.command_words('cl "broken', True)

    def test_compdb_directory_flags_forced_includes_and_duplicate_outputs(self):
        record = {'file': 'a.cpp', 'directory': str(self.root / 'sub dir'), 'output': 'a.o',
                  'command': 'cl /I"../include dir" /FI forced.h /Fddebug.pdb /Zi /c a.cpp /Foa.o'}
        edges = verify.compile_edges([record, record.copy()], self.root, True)
        self.assertEqual(len(edges), 1)
        self.assertEqual(edges[0].roots, (verify.canonical('include dir', self.root),))
        self.assertEqual(edges[0].forced, ('forced.h',))
        self.assertEqual(edges[0].source, verify.canonical('sub dir/a.cpp', self.root))
        self.assertEqual(edges[0].shared_outputs, (verify.canonical('sub dir/debug.pdb', self.root),))
        with self.assertRaisesRegex(ValueError, 'Conflicting'):
            verify.compile_edges([record, dict(record, command=record['command'] + ' /O2')], self.root, True)

    def test_unsupported_response_and_environment_fail_before_replay(self):
        with self.assertRaisesRegex(ValueError, 'Response file'):
            self.edge('a', flags='@flags.rsp')
        with patch.dict(os.environ, {'CL': '/I secret'}):
            with self.assertRaisesRegex(RuntimeError, 'CL/_CL_'):
                self.edge('b')


class GitSelectionTests(Fixture):
    def git(self, *args):
        return subprocess.run(['git', *args], cwd=self.root, check=True, capture_output=True, text=True).stdout

    def test_staged_unstaged_untracked_deleted_and_since_union(self):
        self.git('init', '-q')
        self.write('src/base.cpp', 'base\n')
        self.write('include/deleted.h', 'old\n')
        self.write('include/staged.h', 'old\n')
        self.write('src/unstaged.cpp', 'old\n')
        self.write('.gitignore', 'ignored.cpp\n')
        self.git('add', '.')
        self.git('-c', 'user.name=Test', '-c', 'user.email=test@example.invalid', 'commit', '-qm', 'base')
        base = self.git('rev-parse', 'HEAD').strip()
        committed = self.write('src/base.cpp', 'committed change\n')
        self.git('add', '.')
        self.git('-c', 'user.name=Test', '-c', 'user.email=test@example.invalid', 'commit', '-qm', 'next')
        staged = self.write('include/staged.h', 'staged\n')
        self.git('add', 'include/staged.h')
        unstaged = self.write('src/unstaged.cpp', 'unstaged\n')
        new = self.write('src/new file.cpp', 'untracked\n')
        self.write('ignored.cpp', 'ignored\n')
        deleted = verify.canonical('include/deleted.h', self.root)
        deleted.unlink()
        self.assertEqual(verify.changed_paths(self.root), {staged, unstaged, new, deleted})
        self.assertEqual(verify.changed_paths(self.root, base), {committed, staged, unstaged, new, deleted})
        with self.assertRaises(RuntimeError):
            verify.changed_paths(self.root, '--not-a-ref')


class IncludeTests(Fixture):
    def test_transitive_forced_generated_cycles_and_inactive_branches(self):
        changed = self.write('include/deep.h', '#include "top.h"\n')
        self.write('include/top.h', '#if 0\n#include "deep.h"\n#endif\n')
        self.write('generated/forced.h', '#include "top.h"\n')
        a = self.edge('a', '#include "top.h"\n')
        b = self.edge('b', flags='/FIforced.h')
        c = self.edge('unrelated', 'int x;\n')
        selected, files, problems = verify.select_edges([a, b, c], self.root, {changed})
        self.assertEqual([e.source.name for e in selected], ['a.cpp', 'b.cpp'])
        self.assertEqual(files, {changed})
        self.assertEqual(problems, [])
        self.assertTrue(all('transitive changed header' in e.reasons for e in selected))

    def test_unresolved_macro_only_taints_dependent_translation_units(self):
        changed = self.write('include/change.h')
        self.write('include/uncertain.h', '#include PLATFORM_HEADER\n#include <absent-system.h>\n')
        a = self.edge('a', '#include "uncertain.h"\n')
        b = self.edge('b', 'int x;\n')
        selected, _, _ = verify.select_edges([a, b], self.root, {changed})
        self.assertEqual(selected, [a])
        self.assertIn('conservative:', a.reasons[0])
        self.assertIn('uncertain.h', a.reasons[0])
        self.assertIn('other sites', a.reasons[0])

    def test_comments_continuations_and_msvc_includer_parent_fallback(self):
        changed = self.write('src/private/local.h')
        self.write('include/top.h', '// #include BAD\n/* #include BAD2 */\n#include \\\n"local.h"\n')
        a = self.edge('private/a', '#include "top.h"\n')
        selected, _, _ = verify.select_edges([a], self.root, {changed})
        self.assertEqual(selected, [a])
        self.assertEqual(a.reasons, ['transitive changed header'])

    def test_deleted_header_explicitly_conservative_even_when_old_include_removed(self):
        deleted = verify.canonical('include/gone.h', self.root)
        a = self.edge('a')
        b = self.edge('b')
        selected, files, _ = verify.select_edges([a, b], self.root, {deleted})
        self.assertEqual(len(selected), 2)
        self.assertTrue(all('old closure unavailable' in edge.reasons[0] for edge in selected))
        self.assertEqual(verify.format_files(files, self.root), [])

    def test_changed_sources_skip_scan_and_unregistered_or_deleted_are_incomplete(self):
        a = self.edge('a')
        new = self.write('src/new.cpp')
        a.source.unlink()
        with patch.object(verify.IncludeScanner, 'select', side_effect=AssertionError('should not scan')):
            selected, _, problems = verify.select_edges([a], self.root, {a.source, new})
        self.assertEqual(selected, [a])
        self.assertTrue(any('Unregistered' in p for p in problems))
        self.assertTrue(any('Deleted' in p for p in problems))

    def test_explicit_unit_uses_common_contract_and_formats_only_source(self):
        a = self.edge('a', '#include "other.h"\n')
        self.write('include/other.h')
        common = types.ModuleType('decomp_common')
        common.resolve_unit = unittest.mock.Mock(return_value={'base_path': 'build/a.o'})
        with patch.dict(sys.modules, {'decomp_common': common}):
            selected, inputs, problems = verify.select_edges([a], self.root, unit='a')
        common.resolve_unit.assert_called_once_with(unit='a', source=None, root=self.root)
        self.assertEqual(selected, [a])
        self.assertEqual(inputs, {a.source})
        self.assertFalse(problems)


class PipelineTests(Fixture):
    def args(self, **kwargs):
        values = dict(compile_only=False, baseline=self.write('build/baseline.json',
                      json.dumps({'units': [], 'measures': {}})), ninja='ninja', jobs=3,
                      log_dir=None, format=False, clang_format='clang-format')
        values.update(kwargs)
        return argparse.Namespace(**values)

    def report(self):
        return {'directory': str(self.root), 'output': 'build/report.json',
                'command': 'objdiff report generate -o build/report.json'}

    def test_baseline_aliases_and_invalid_reports_rejected(self):
        path = self.write('build/report.json', '{"units": [], "measures": {}}')
        with self.assertRaisesRegex(ValueError, 'alias'):
            verify.validate_baseline(path, [path])
        alias = self.root / 'build/hardlink.json'
        os.link(path, alias)
        with self.assertRaisesRegex(ValueError, 'alias'):
            verify.validate_baseline(alias, [path])
        path.write_text('{}')
        with self.assertRaisesRegex(ValueError, 'objdiff report'):
            verify.validate_baseline(path, [])
        with self.assertRaisesRegex(ValueError, 'existing report'):
            verify.validate_baseline(None, [])

    def test_rich_snapshot_is_accepted_as_read_only_baseline(self):
        path = self.write('snapshot.json', json.dumps({'format': 'decomp-regress-snapshot-v1',
                          'report': {'units': [], 'measures': {}}, 'snapshot': {}}))
        original = path.read_bytes()
        self.assertEqual(len(verify.validate_baseline(path, [])), 32)
        self.assertEqual(path.read_bytes(), original)

    def test_prerequisites_exclude_compile_source_but_include_generated_inputs(self):
        a = self.edge('a')
        query = 'build/a.o:\n  input: cl\n    src/a.cpp\n    | build/compiler\n    || pre-compile\n  outputs:\n    all_source\n'
        with patch.object(verify, 'capture', side_effect=[query, 'prepare\n' + a.command + '\n']):
            self.assertEqual(verify.prerequisites('ninja', a, self.root), ['build/compiler', 'pre-compile'])
        with patch.object(verify, 'capture', side_effect=[query, 'different command\n']):
            with self.assertRaisesRegex(RuntimeError, 'changed'):
                verify.prerequisites('ninja', a, self.root)

    def test_run_preserves_mixed_case_ninja_targets_commands_and_working_directory(self):
        directory = self.root / 'MixedCaseProject'
        self.write('MixedCaseProject/src/Black/Game.cpp')
        target = 'build/BW1W120/src/Black/Game.o'
        command = 'cl.exe /c src/Black/Game.cpp /Fo' + target
        record = {'directory': str(directory), 'file': 'src/Black/Game.cpp',
                  'output': target, 'command': command}
        # Exercise Windows case folding even when this test runs on POSIX.
        with patch.object(verify.os.path, 'normcase', side_effect=lambda value: value.lower()):
            edge = verify.compile_edges([record], directory, windows=True)[0]
        self.assertEqual(edge.target, target)
        self.assertEqual(str(edge.directory), str(directory))
        queries = []

        def capture(argv, cwd):
            self.assertEqual(str(cwd), str(directory))
            self.assertEqual(argv[-1], target)
            queries.append(argv)
            if argv[2] == 'query':
                return target + ':\n  input: cl\n  outputs:\n'
            return command + '\n'

        args = self.args(compile_only=True, baseline=None)
        with patch.object(verify, 'capture', side_effect=capture), \
             patch.object(verify, 'logged', return_value=0) as log, redirect_stdout(io.StringIO()):
            self.assertEqual(verify.execute(args, directory, [edge], []), 0)
        self.assertEqual(queries, [['ninja', '-t', tool, target]
                                  for tool in ('query', 'commands', 'query', 'commands')])
        log.assert_called_once()
        self.assertEqual(log.call_args.args[0], verify.exact_argv(command))
        self.assertEqual(str(log.call_args.args[1]), str(directory))

    def test_full_pipeline_orders_hashes_refresh_and_regression_preserves_baseline(self):
        a = self.edge('a')
        args = self.args()
        original = args.baseline.read_bytes()
        self.write('tools/decomp-regress.py')
        calls = []

        def log(argv, root, path):
            calls.append((path.stem, argv))
            return 0

        with patch.object(verify, 'report_edge', return_value=self.report()), \
             patch.object(verify, 'prerequisites', return_value=['pre-compile']), \
             patch.object(verify, 'logged', side_effect=log), redirect_stdout(io.StringIO()):
            result = verify.execute(args, self.root, [a], [a.source])
        self.assertEqual(result, 0)
        self.assertEqual([name for name, _ in calls], ['format-0000-a.cpp', 'prerequisites-0',
                         'compile-0000-a.cpp', 'ninja-default-hashes', 'report-refresh', 'regressions'])
        self.assertIn('--dry-run', calls[0][1])
        self.assertNotIn('-i', calls[0][1])
        self.assertEqual(calls[-1][1][2:], ['--baseline', str(args.baseline), '--report',
                                          str(verify.canonical('build/report.json', self.root)),
                                          '--fail-on-regression'])
        self.assertEqual(args.baseline.read_bytes(), original)
        self.assertFalse(any(argv == ['ninja', 'baseline'] for _, argv in calls))

    def test_each_failure_stops_later_pipeline_stages(self):
        for fail in ('format', 'prerequisites', 'compile', 'ninja-default', 'report-refresh', 'regressions'):
            with self.subTest(fail=fail):
                a = self.edge('a')
                args = self.args()
                self.write('tools/decomp-regress.py')
                calls = []

                def log(argv, root, path):
                    calls.append(path.stem)
                    return 1 if path.stem.startswith(fail) else 0

                with patch.object(verify, 'report_edge', return_value=self.report()), \
                     patch.object(verify, 'prerequisites', return_value=['pre-compile']), \
                     patch.object(verify, 'logged', side_effect=log), redirect_stdout(io.StringIO()):
                    self.assertEqual(verify.execute(args, self.root, [a], [a.source]), 1)
                self.assertTrue(calls[-1].startswith(fail), calls)

    def test_missing_baseline_fails_before_logs_formatter_or_build(self):
        a = self.edge('a')
        args = self.args(baseline=None)
        with patch.object(verify, 'report_edge', return_value=self.report()), \
             patch.object(verify, 'logged') as log:
            with self.assertRaisesRegex(ValueError, 'existing report'):
                verify.execute(args, self.root, [a], [a.source])
        log.assert_not_called()
        self.assertFalse((self.root / 'build/decomp-verify').exists())

    def test_compile_only_skips_reports_and_serializes_shared_pdb(self):
        a, b = self.edge('a', flags='/Zi'), self.edge('b', flags='/Zi')
        args = self.args(compile_only=True, baseline=None)
        real_pool = verify.ThreadPoolExecutor
        with patch.object(verify, 'report_edge', side_effect=AssertionError('no reports')), \
             patch.object(verify, 'prerequisites', return_value=[]), \
             patch.object(verify, 'logged', return_value=0) as log, \
             patch.object(verify, 'ThreadPoolExecutor', wraps=real_pool) as pool, \
             redirect_stdout(io.StringIO()):
            self.assertEqual(verify.execute(args, self.root, [a, b], []), 0)
        pool.assert_called_once_with(max_workers=1)
        self.assertEqual(log.call_count, 2)

    def test_explicit_format_only_receives_intended_input_and_independent_jobs(self):
        a, b = self.edge('a'), self.edge('b')
        header = self.write('include/edited.h')
        self.write('include/unrelated.h')
        args = self.args(compile_only=True, baseline=None, format=True)
        real_pool = verify.ThreadPoolExecutor
        with patch.object(verify, 'prerequisites', return_value=[]), \
             patch.object(verify, 'logged', return_value=0) as log, \
             patch.object(verify, 'ThreadPoolExecutor', wraps=real_pool) as pool, \
             redirect_stdout(io.StringIO()):
            self.assertEqual(verify.execute(args, self.root, [a, b], [header]), 0)
        pool.assert_called_once_with(max_workers=3)
        self.assertEqual(log.call_args_list[0].args[0], ['clang-format', '-i', str(header)])
        self.assertEqual(log.call_count, 3)

    def test_changed_baseline_aborts_before_regression_comparison(self):
        a = self.edge('a')
        args = self.args()
        self.write('tools/decomp-regress.py')
        calls = []

        def log(argv, root, path):
            calls.append(path.stem)
            if path.stem == 'report-refresh':
                args.baseline.write_text('{"units": [], "measures": {"changed": 1}}')
            return 0

        with patch.object(verify, 'report_edge', return_value=self.report()), \
             patch.object(verify, 'prerequisites', return_value=[]), \
             patch.object(verify, 'logged', side_effect=log), redirect_stdout(io.StringIO()):
            with self.assertRaisesRegex(RuntimeError, 'Baseline changed'):
                verify.execute(args, self.root, [a], [])
        self.assertNotIn('regressions', calls)

    def test_compiler_failure_has_full_log_but_no_warning_flood(self):
        log = self.root / 'compiler.log'
        output = io.StringIO()
        code = 'print("warning C4100: noisy\\n" * 100); print("fatal error C1001: useful"); raise SystemExit(2)'
        with redirect_stdout(output):
            result = verify.logged([sys.executable, '-c', code], self.root, log)
        self.assertEqual(result, 2)
        self.assertIn('fatal error C1001', output.getvalue())
        self.assertNotIn('warning C4100', output.getvalue())
        self.assertGreater(log.read_text().count('warning C4100'), 99)

    def test_regression_counts_visible_on_success_and_failure_without_unit_flood(self):
        for code in (0, 1):
            with self.subTest(code=code):
                log = self.root / 'regressions.log'
                report = (f'Regressions: {code}\nReport freshness: current (0 newer inputs, 0 missing inputs)\n'
                          'runblack/Black/Game [both]\n  function details\n' + 'detail noise\n' * 100)
                output = io.StringIO()
                with redirect_stdout(output):
                    result = verify.logged([sys.executable, '-c', f'print({report!r}); raise SystemExit({code})'],
                                           self.root, log)
                self.assertEqual(result, code)
                self.assertIn(f'Regressions: {code}', output.getvalue())
                self.assertIn('Report freshness: current', output.getvalue())
                self.assertIn('Changed units: 1', output.getvalue())
                self.assertNotIn('detail noise', output.getvalue())
                self.assertIn('detail noise', log.read_text())

    def test_default_list_does_not_execute_or_create_artifacts(self):
        a = self.edge('a')
        record = {'file': str(a.source), 'directory': str(self.root), 'output': str(a.output), 'command': a.command}
        common = types.ModuleType('decomp_common')
        common.resolve_unit = lambda **kwargs: {'base_path': 'build/a.o'}
        before = set(self.root.rglob('*'))
        with patch.object(verify, 'capture', return_value=json.dumps([record])), \
             patch.dict(sys.modules, {'decomp_common': common}), \
             patch.object(verify, 'execute', side_effect=AssertionError('must be read-only')), \
             redirect_stdout(io.StringIO()) as output:
            self.assertEqual(verify.main(['--repo', str(self.root), '--unit', 'a']), 0)
        self.assertIn('PLAN (read-only)', output.getvalue())
        self.assertEqual(set(self.root.rglob('*')), before)

    def test_format_requires_run_and_outside_files_rejected(self):
        with redirect_stdout(io.StringIO()), patch('sys.stderr', new=io.StringIO()):
            with self.assertRaises(SystemExit):
                verify.main(['--format'])
        with self.assertRaisesRegex(ValueError, 'outside'):
            verify.format_files({SCRIPT}, self.root)


if __name__ == '__main__':
    unittest.main()
