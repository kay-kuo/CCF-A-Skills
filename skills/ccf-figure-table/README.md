# ccf-figure-table

设计 CCF-A 论文的方法图、实验表、消融表、case study、error analysis 和 caption。

## When to use

Use when the user asks for figures, tables, diagrams, experiment result organization, captions, or visual evidence planning.

## Install unit

Copy the entire folder plus `skills/_shared/`.

```text
skills/_shared/
skills/ccf-figure-table/
```

## Core outputs

- Figure/table plan
- Panel layout
- Caption draft
- Evidence mapping
- QA checklist

## Typical prompt

```text
Use ccf-figure-table for this CCF-A paper task. Target venue: <venue>. Output language: <language>. Here is the paper/draft/review: <content>.
```

## Quality check

After producing the first output, evaluate it against `tests/rubric.md` and revise once.
