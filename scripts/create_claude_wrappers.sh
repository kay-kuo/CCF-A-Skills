#!/usr/bin/env bash
set -euo pipefail
ROOT="${1:-$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)}"
DEST="${CLAUDE_AGENTS_DIR:-$HOME/.claude/agents}"
mkdir -p "$DEST"
for d in "$ROOT"/skills/ccf-*; do
  name="$(basename "$d")"
  desc="CCF-A conference/journal skill: $name"
  cat > "$DEST/$name.md" <<EOF
---
name: $name
description: $desc. Use proactively for CCF-A paper workflows when the user asks for this task.
---
When invoked, first read \`$ROOT/skills/$name/SKILL.md\`.
Treat that file as the governing workflow.
Read supporting files only as needed from \`$ROOT/skills/$name/\` and \`$ROOT/skills/_shared/\`.
Do not replace the skill with a generic answer.
EOF
done
echo "Created Claude Code wrappers in $DEST"
