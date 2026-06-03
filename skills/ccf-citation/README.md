# ccf-citation

构建 related work taxonomy、closest-work defense、baseline/citation coverage 和漏引风险清单。

## When to use

Use when the user asks for related work, citation organization, closest work comparison, missing citations, or bibliography defense.

## Install unit

Copy the entire folder plus `skills/_shared/`.

```text
skills/_shared/
skills/ccf-citation/
```

## Core outputs

- Taxonomy
- Closest-work matrix
- Missing citation risk list
- Related-work draft bullets

## Typical prompt

```text
Use ccf-citation for this CCF-A paper task. Target venue: <venue>. Output language: <language>. Here is the paper/draft/review: <content>.
```

## Quality check

After producing the first output, evaluate it against `tests/rubric.md` and revise once.
