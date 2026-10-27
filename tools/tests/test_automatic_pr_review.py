import unittest
from unittest import mock

import tools.automatic_pr_review as automatic_pr_review
from tools.automatic_pr_review import (
    GitHub,
    added_line_numbers,
    build_diff_context,
    make_comment,
    safe_markdown,
    valid_findings,
)


class AutomaticReviewTests(unittest.TestCase):
    def test_file_pagination_reports_when_the_review_limit_omits_files(self):
        github = GitHub("owner/repository", "token")
        pages = [
            [{"filename": "file-{}".format(index)} for index in range(start, start + 100)]
            for start in (0, 100, 200)
        ]
        with mock.patch.object(github, "request", side_effect=pages):
            files, truncated = github.list_changed_files(1)
        self.assertEqual(len(files), 200)
        self.assertTrue(truncated)

    def test_exact_file_limit_is_not_reported_as_omitted(self):
        github = GitHub("owner/repository", "token")
        pages = [
            [{"filename": "file-{}".format(index)} for index in range(start, start + 100)]
            for start in (0, 100)
        ] + [[]]
        with mock.patch.object(github, "request", side_effect=pages):
            files, truncated = github.list_changed_files(1)
        self.assertEqual(len(files), 200)
        self.assertFalse(truncated)

    def test_added_line_numbers_tracks_new_side_only(self):
        patch = "@@ -4,3 +4,4 @@\n context\n-old line\n+new line\n+another line\n tail\n"
        self.assertEqual(added_line_numbers(patch), {5, 6})

    def test_build_diff_context_tracks_only_added_lines(self):
        files = [
            {
                "filename": "src/example.cpp",
                "status": "modified",
                "additions": 1,
                "deletions": 1,
                "patch": "@@ -1 +1 @@\n-old\n+new",
            }
        ]
        context, changed_lines, truncated = build_diff_context(files)
        self.assertIn("src/example.cpp", context)
        self.assertEqual(changed_lines, {"src/example.cpp": {1}})
        self.assertEqual(truncated, 0)

    def test_truncated_patch_cannot_anchor_an_omitted_line(self):
        files = [
            {
                "filename": "src/example.cpp",
                "status": "modified",
                "additions": 2,
                "deletions": 0,
                "patch": "@@ -0,0 +1,2 @@\n+one\n+two\n",
            }
        ]
        with mock.patch.object(automatic_pr_review, "MAX_FILE_PATCH_CHARS", 21):
            _, changed_lines, truncated = build_diff_context(files)
        self.assertEqual(changed_lines, {"src/example.cpp": {1}})
        self.assertEqual(truncated, 1)

    def test_missing_patch_is_reported_as_limited_coverage(self):
        files = [
            {
                "filename": "assets/image.bin",
                "status": "modified",
                "additions": 0,
                "deletions": 0,
                "patch": None,
            }
        ]
        _, changed_lines, limited = build_diff_context(files)
        self.assertEqual(changed_lines, {"assets/image.bin": set()})
        self.assertEqual(limited, 1)

    def test_findings_must_reference_added_lines(self):
        result = {
            "findings": [
                {
                    "path": "src/example.cpp",
                    "line": 9,
                    "severity": "high",
                    "classification": "correctness defect",
                    "title": "Out-of-bounds access",
                    "evidence": "The index is unchecked.",
                    "why_it_matters": "It can read past the buffer.",
                    "suggestion": "Validate the index.",
                },
                {
                    "path": "src/example.cpp",
                    "line": 8,
                    "severity": "high",
                    "classification": "correctness defect",
                    "title": "Not an added line",
                    "evidence": "No evidence.",
                    "why_it_matters": "No reason.",
                    "suggestion": "No change.",
                },
            ]
        }
        findings = valid_findings(result, {"src/example.cpp": {9}})
        self.assertEqual(len(findings), 1)
        self.assertEqual(findings[0]["line"], 9)

    def test_comment_escapes_mentions_and_html(self):
        escaped = safe_markdown("notify @team <tag> & keep")
        self.assertNotIn("@team", escaped)
        self.assertIn("&lt;tag&gt;", escaped)
        self.assertIn("&amp;", escaped)

    def test_no_finding_comment_is_advisory(self):
        body = make_comment([], "0123456789abcdef", 0, 0)
        self.assertIn("No actionable findings", body)
        self.assertIn("Maintainers make the final call", body)


if __name__ == "__main__":
    unittest.main()
