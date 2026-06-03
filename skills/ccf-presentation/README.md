# ccf-presentation

生成组会汇报、投稿 defense、oral/poster 的 CCF-A 论文汇报结构、slide 文案和 speaker notes。

## When to use

Use when the user asks for journal club, lab meeting, internal defense, conference oral/poster, or paper-to-slides planning.

## Install unit

Copy the entire folder plus `skills/_shared/`.

```text
skills/_shared/
skills/ccf-presentation/
```

## Core outputs

- Slide outline
- Slide-by-slide script
- Poster sections
- Defense Q&A
- Figure/table selection plan

## Typical prompt

```text
Use ccf-presentation for this CCF-A paper task. Target venue: <venue>. Output language: <language>. Here is the paper/draft/review: <content>.
```

## Quality check

After producing the first output, evaluate it against `tests/rubric.md` and revise once.
