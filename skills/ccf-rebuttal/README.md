# ccf-rebuttal

撰写 CCF-A 会议 rebuttal 或期刊 response letter，逐条回应 reviewer concern。

## When to use

Use when the user provides reviewer comments, meta-review, decision letter, or asks for rebuttal/response drafting.

## Install unit

Copy the entire folder plus `skills/_shared/`.

```text
skills/_shared/
skills/ccf-rebuttal/
```

## Core outputs

- Concern map
- Priority response plan
- Rebuttal draft
- Revision plan
- Tone/risk check

## Typical prompt

```text
Use ccf-rebuttal for this CCF-A paper task. Target venue: <venue>. Output language: <language>. Here is the paper/draft/review: <content>.
```

## Quality check

After producing the first output, evaluate it against `tests/rubric.md` and revise once.
