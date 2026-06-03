# CCF-A-Skills Installation Guide

This repository is a collection of reusable skill bundles centred on `SKILL.md`.

The most important rule:

- `CCF-A-Skills` is not a Python package or npm package.
- Each `skills/ccf-*` folder is one reusable skill unit.
- Copy or reference the entire folder, not only `SKILL.md`.
- `skills/_shared/` contains shared rules used by all CCF-A skills.

## 1. What gets installed

Typical skill structure:

```text
skills/
├── _shared/
└── ccf-<topic>/
    ├── README.md
    ├── SKILL.md
    ├── manifest.yaml
    ├── static/
    ├── references/
    ├── examples/
    └── tests/rubric.md
```

## 2. Install for Codex local skills

Clone the repository:

```bash
git clone https://github.com/<your-org>/CCF-A-Skills.git
cd CCF-A-Skills
```

Install all skills:

```bash
mkdir -p ~/.codex/skills
cp -R skills/_shared ~/.codex/skills/
for d in skills/ccf-*; do
  cp -R "$d" ~/.codex/skills/
done
```

Install one skill, e.g. `ccf-writing`:

```bash
mkdir -p ~/.codex/skills
cp -R skills/_shared ~/.codex/skills/
cp -R skills/ccf-writing ~/.codex/skills/
```

Restart Codex or open a new session.

## 3. Install for Claude Code

Claude Code does not necessarily consume Codex skill folders directly. The robust method is a thin subagent wrapper that points to the real `SKILL.md` file in a stable local clone.

```bash
mkdir -p ~/ai-skills
cd ~/ai-skills
git clone https://github.com/<your-org>/CCF-A-Skills.git
cd CCF-A-Skills
bash scripts/create_claude_wrappers.sh ~/ai-skills/CCF-A-Skills
```

Example generated wrapper:

```markdown
---
name: ccf-writing
description: CCF-A conference/journal writing skill for Introduction, Method, Experiments, Related Work, and Limitations.
---
When invoked, first read `~/ai-skills/CCF-A-Skills/skills/ccf-writing/SKILL.md`.
Treat that file as the governing workflow.
Read supporting files only as needed from the same skill directory and `skills/_shared/`.
Do not replace the skill with a generic writing response.
```

## 4. Other agents or manual use

If your agent supports reusable prompt files, system prompts, agent profiles, or tool-specific skills:

1. Copy `skills/_shared/`.
2. Copy the full `skills/ccf-*` folder you need.
3. Make the agent read `SKILL.md` first.
4. Preserve the relative folder structure.

## 5. Verify installation

Ask for a task that clearly matches a skill:

```text
Use ccf-reader to精读这篇 CVPR 论文，按 background-problem-challenge-method-novelty-experiment 输出。
```

or

```text
Use ccf-reviewer to simulate three reviewers for this NeurIPS draft and identify fatal rejection risks.
```

If the agent gives a generic answer, check:

- Did you copy the whole folder rather than only `SKILL.md`?
- Did you copy `skills/_shared/`?
- Did you start a fresh session?
- Did your request clearly match the skill trigger?

## 6. Update

After pulling changes:

```bash
git pull
bash scripts/install_codex.sh
bash scripts/create_claude_wrappers.sh ~/ai-skills/CCF-A-Skills
```
