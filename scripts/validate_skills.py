#!/usr/bin/env python3
"""Lightweight repository validator for CCF-A-Skills."""
from pathlib import Path
import sys

ROOT = Path(__file__).resolve().parents[1]
REQUIRED = ["README.md", "SKILL.md", "manifest.yaml", "tests/rubric.md"]
SKILLS = [
    "ccf-reader", "ccf-writing", "ccf-figure-table", "ccf-citation",
    "ccf-reviewer", "ccf-rebuttal", "ccf-presentation",
]

def main() -> int:
    errors = []
    shared = ROOT / "skills" / "_shared"
    if not shared.exists():
        errors.append("Missing skills/_shared")
    for skill in SKILLS:
        base = ROOT / "skills" / skill
        if not base.exists():
            errors.append(f"Missing skill folder: {skill}")
            continue
        for req in REQUIRED:
            if not (base / req).exists():
                errors.append(f"{skill}: missing {req}")
        skill_md = base / "SKILL.md"
        if skill_md.exists():
            text = skill_md.read_text(encoding="utf-8")
            for phrase in ["Do not fabricate", "Evidence", "Reviewer", "rubric"]:
                if phrase not in text:
                    errors.append(f"{skill}: SKILL.md missing required phrase: {phrase}")
    if errors:
        print("Validation failed:")
        for e in errors:
            print(f"- {e}")
        return 1
    print("Validation passed. All core skill folders look installable.")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
