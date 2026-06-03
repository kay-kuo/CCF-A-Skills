# ccf-reader

精读 CCF-A 论文，抽取 background-problem-challenge-method-novelty-experiment，并形成 reviewer-aware paper card。

## When to use

Use when the user asks to read, dissect, translate, or analyze a CS/AI conference or journal paper.

## Install unit

Copy the entire folder plus `skills/_shared/`.

```text
skills/_shared/
skills/ccf-reader/
```

## Core outputs

- Paper Card
- Method Card
- Experiment Card
- Novelty/Risk Card
- Citation Use Card

## Typical prompt

```text
Use ccf-reader for this CCF-A paper task. Target venue: <venue>. Output language: <language>. Here is the paper/draft/review: <content>.
```

## Quality check

After producing the first output, evaluate it against `tests/rubric.md` and revise once.
