# Contributing to CCF-A-Skills

欢迎提交 issue 或 PR。为了保持 skill 可维护，请遵守以下格式。

## Add or modify a skill

Each skill should include:

```text
README.md
SKILL.md
manifest.yaml
static/
references/
examples/
tests/rubric.md
```

## Required principles

1. Do not add rules that encourage fabricated results, citations, line numbers, or reviewer comments.
2. Any venue-specific rule must be phrased as a default heuristic unless it is copied from an official author instruction page.
3. Keep `SKILL.md` as a router. Put long checklists in `static/` or `references/`.
4. Add a rubric for every new skill or major workflow.
5. Add at least one example prompt.

## PR checklist

- [ ] The skill folder can be copied alone with `skills/_shared/` and still work.
- [ ] `manifest.yaml` exists and names all important axes.
- [ ] `SKILL.md` forbids hallucinating citations/results.
- [ ] `tests/rubric.md` can be used by an agent to self-check output.
- [ ] `python scripts/validate_skills.py` passes.
