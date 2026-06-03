# ccf-writing

撰写和改写 CCF-A 论文的 Introduction、Method、Experiments、Related Work、Limitations，按 venue 风格适配。

## When to use

Use when the user asks to draft, rewrite, polish, or structure manuscript sections for CCF-A venues.

## Install unit

Copy the entire folder plus `skills/_shared/`.

```text
skills/_shared/
skills/ccf-writing/
```

## Core outputs

- Section draft
- Claim-evidence table
- Reviewer-risk notes
- TODO(author-confirm) list

## Typical prompt

```text
Use ccf-writing for this CCF-A paper task. Target venue: <venue>. Output language: <language>. Here is the paper/draft/review: <content>.
```

## Quality check

After producing the first output, evaluate it against `tests/rubric.md` and revise once.
