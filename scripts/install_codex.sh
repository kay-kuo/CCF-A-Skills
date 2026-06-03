#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DEST="${CODEX_SKILLS_DIR:-$HOME/.codex/skills}"
mkdir -p "$DEST"
cp -R "$ROOT/skills/_shared" "$DEST/"
for d in "$ROOT"/skills/ccf-*; do
  cp -R "$d" "$DEST/"
done
echo "Installed CCF-A skills into $DEST"
echo "Restart your agent session before use."
