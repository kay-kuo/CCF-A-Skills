# Release checklist

Before publishing a GitHub release:

1. Run validation.

```bash
python scripts/validate_skills.py
```

2. Check that the repository contains:

```text
README.md
install.md
LICENSE
CONTRIBUTING.md
repo_manifest.yaml
scripts/
plugins/
skills/_shared/
skills/ccf-*/
```

3. Verify local Codex install:

```bash
bash scripts/install_codex.sh
```

4. Verify Claude wrapper generation:

```bash
bash scripts/create_claude_wrappers.sh /absolute/path/to/CCF-A-Skills
```

5. Create a GitHub repository and push:

```bash
git init
git add .
git commit -m "Initial CCF-A skills release"
git branch -M main
git remote add origin https://github.com/<your-org>/CCF-A-Skills.git
git push -u origin main
```

6. Add repository topics:

```text
ccf-a, academic-writing, research-agent, ai-agent, paper-review, rebuttal, scientific-writing, skills
```

7. Optional: create release `v0.1.0` with the zip archive.
