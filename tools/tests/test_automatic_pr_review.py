import unittest
from unittest import mock

import tools.automatic_pr_review as automatic_pr_review
from tools.automatic_pr_review import (
    GitHub,
    added_line_numbers,
    build_diff_context,
    choose_review_event,
    make_review_body,
    response_output_text,
    safe_markdown,
    valid_findings,
)


class AutomaticReviewTests(unittest.TestCase):
    def test_submit_review_uses_github_review_event(self):
        github = GitHub("owner/repository", "token")
        with (
            mock.patch.object(github, "list_reviews", return_value=[]),
            mock.patch.object(github, "request") as request,
            mock.patch.object(github, "remove_legacy_comments"),
        ):
            github.submit_review(7, "head-sha", "REQUEST_CHANGES", "body")
        request.assert_called_once_with(
            "POST",
            "/repos/owner/repository/pulls/7/reviews",
            {"commit_id": "head-sha", "event": "REQUEST_CHANGES", "body": "body"},
        )

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
        findings, invalid_count, omitted_count = valid_findings(
            result, {"src/example.cpp": {9}}
        )
        self.assertEqual(len(findings), 1)
        self.assertEqual(findings[0]["line"], 9)
        self.assertEqual(invalid_count, 1)
        self.assertEqual(omitted_count, 0)

    def test_comment_escapes_mentions_and_html(self):
        escaped = safe_markdown("notify @team <tag> & keep")
        self.assertNotIn("@team", escaped)
        self.assertIn("&lt;tag&gt;", escaped)
        self.assertIn("&amp;", escaped)

    def test_complete_clean_review_is_approved(self):
        self.assertEqual(choose_review_event([], 0, 0), "APPROVE")

    def test_partial_coverage_never_approves(self):
        self.assertEqual(choose_review_event([], 1, 0), "COMMENT")
        self.assertEqual(choose_review_event([], 0, 1), "COMMENT")
        self.assertEqual(choose_review_event([], 0, 0, 1), "COMMENT")
        finding = {"classification": "correctness defect", "severity": "high"}
        self.assertEqual(choose_review_event([finding], 1, 0), "COMMENT")

    def test_findings_beyond_limit_prevent_approval(self):
        finding = {
            "path": "src/example.cpp",
            "line": 1,
            "severity": "low",
            "classification": "maintainability/readability issue",
            "title": "Finding",
            "evidence": "Evidence",
            "why_it_matters": "Impact",
            "suggestion": "Suggestion",
        }
        result = {"findings": [dict(finding) for _ in range(13)]}
        findings, invalid_count, omitted_count = valid_findings(
            result, {"src/example.cpp": {1}}
        )
        self.assertEqual(len(findings), automatic_pr_review.MAX_FINDINGS)
        self.assertEqual(invalid_count, 0)
        self.assertEqual(omitted_count, 1)
        self.assertEqual(
            choose_review_event(findings, 0, 0, invalid_count, omitted_count), "COMMENT"
        )

    def test_correctness_findings_request_changes(self):
        findings = [
            {"classification": "correctness defect", "severity": "medium"}
        ]
        self.assertEqual(choose_review_event(findings, 0, 0), "REQUEST_CHANGES")

    def test_other_findings_are_comments(self):
        findings = [
            {"classification": "unconfirmed risk", "severity": "high"}
        ]
        self.assertEqual(choose_review_event(findings, 0, 0), "COMMENT")

    def test_no_finding_review_body_is_advisory(self):
        body = make_review_body([], "0123456789abcdef", "APPROVE", 0, 0)
        self.assertIn("No actionable findings", body)
        self.assertIn("Maintainers make the final call", body)

    def test_review_body_reports_unreviewed_overflow(self):
        body = make_review_body([], "0123456789abcdef", "COMMENT", 0, 0, 0, 1)
        self.assertIn("No validated findings were available", body)
        self.assertIn("beyond the output limit were not reviewed", body)

    def test_responses_api_text_extraction_skips_non_message_items(self):
        envelope = {
            "output": [
                {"type": "reasoning", "summary": []},
                {
                    "type": "message",
                    "role": "assistant",
                    "content": [{"type": "output_text", "text": '{"findings": []}'}],
                },
            ]
        }
        self.assertEqual(response_output_text(envelope), '{"findings": []}')


if __name__ == "__main__":
    unittest.main()
