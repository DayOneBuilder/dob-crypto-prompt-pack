#!/usr/bin/env bash
set -euo pipefail
SKILL_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="${SKILL_DIR}/references/prompt-pack.md"
if [ ! -f "$SRC" ]; then
  echo "Prompt pack file not found: $SRC" >&2
  exit 1
fi
TARGET="${1:-$(pwd)/dayonebuilder-50-ai-prompts-for-crypto-research.md}"
mkdir -p "$(dirname "$TARGET")"
cp "$SRC" "$TARGET"
echo "Exported prompt pack to: $TARGET"
