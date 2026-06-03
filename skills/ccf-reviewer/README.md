# ccf-reviewer

模拟 CCF-A reviewer，提前发现 novelty、baseline、ablation、reproducibility、writing 等拒稿点。

## When to use

Use when the user asks to review a draft, simulate reviewers, estimate risks, or prepare before submission.

## Install unit

Copy the entire folder plus `skills/_shared/`.

```text
skills/_shared/
skills/ccf-reviewer/
```

## Core outputs

- Reviewer reports
- Meta-review
- Fatal-risk list
- Revision action plan
- Score rationale

## Typical prompt

```text
Use ccf-reviewer for this CCF-A paper task. Target venue: <venue>. Output language: <language>. Here is the paper/draft/review: <content>.
```

## Quality check

After producing the first output, evaluate it against `tests/rubric.md` and revise once.
