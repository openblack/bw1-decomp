#!/usr/bin/env python3
"""Create a per-version PR summary from objdiff report JSON files."""

import argparse
import json
from pathlib import Path


VERSIONS = ("BW1W100", "BW1W110", "BW1W120", "BW1W130", "BW1WCI")


def read_report(root, version):
    path = root / (version + "_report") / "report.json"
    if not path.is_file():
        raise ValueError("Missing report: " + str(path))
    with path.open(encoding="utf-8") as report_file:
        report = json.load(report_file)
    if not isinstance(report.get("measures"), dict):
        raise ValueError("Missing measures in " + str(path))
    return report


def integer(measures, name):
    return int(measures.get(name, 0))


def decimal(measures, name):
    return float(measures.get(name, 0.0))


def signed(value):
    return ("+" if value >= 0 else "") + str(value)


def matched_line(label, before_bytes, before_percent, after_bytes, after_percent):
    byte_delta = after_bytes - before_bytes
    percent_delta = after_percent - before_percent
    if byte_delta > 0:
        icon = "📈"
    elif byte_delta < 0:
        icon = "📉"
    else:
        icon = "•"
    return "{} **{}**: {:.2f}% ({:+.2f}%, {} bytes)".format(
        icon, label, after_percent, percent_delta, signed(byte_delta)
    )


def report_block(version, base, current, base_sha, head_sha):
    lines = ["### Report for {} ({} - {})".format(version, base_sha[:7], head_sha[:7]), ""]
    base_measures = base["measures"]
    current_measures = current["measures"]
    metrics = (
        ("total_code", None, "Total code", "bytes"),
        ("total_functions", None, "Total functions", ""),
        ("matched_code", "matched_code_percent", "Matched code", "matched"),
        ("total_data", None, "Total data", "bytes"),
        ("matched_data", "matched_data_percent", "Matched data", "matched"),
    )
    for key, percent_key, label, kind in metrics:
        before = integer(base_measures, key)
        after = integer(current_measures, key)
        if kind == "matched":
            lines.append(matched_line(
                label,
                before,
                decimal(base_measures, percent_key),
                after,
                decimal(current_measures, percent_key),
            ))
        elif kind == "bytes":
            lines.append("**{}**: {} bytes ({} bytes)".format(label, after, signed(after - before)))
        else:
            lines.append("**{}**: {} ({})".format(label, after, signed(after - before)))

    return "\n".join(lines)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--baseline", type=Path, required=True)
    parser.add_argument("--candidate", type=Path, required=True)
    parser.add_argument("--base-sha", required=True)
    parser.add_argument("--head-sha", required=True)
    parser.add_argument("--run-url", required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()

    blocks = []
    for version in VERSIONS:
        blocks.append(report_block(
            version,
            read_report(args.baseline, version),
            read_report(args.candidate, version),
            args.base_sha,
            args.head_sha,
        ))
    body = "\n\n---\n\n".join(blocks)
    body += "\n\n[Build maps and reports]({})".format(args.run_url)
    args.output.write_text(body + "\n", encoding="utf-8")


if __name__ == "__main__":
    main()
