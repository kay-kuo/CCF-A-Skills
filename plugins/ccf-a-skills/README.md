# ccf-a-skills plugin package

This directory is a lightweight placeholder for packaging the full skill bundle in agents that support plugin marketplace installation.

For now, the recommended installation path is local skill copying:

```bash
bash scripts/install_codex.sh
```

If your agent supports plugin manifests, adapt `plugin.yaml` to the agent-specific schema while preserving the `skills/` folder layout.
