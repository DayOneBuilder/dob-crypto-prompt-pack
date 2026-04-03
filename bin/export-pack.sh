#!/usr/bin/env bash
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PRODUCT_HOME="${HOME}/.dayonebuilder/dob-crypto-prompt-pack"
SRC="${PRODUCT_HOME}/assets/dayonebuilder-50-ai-prompts-for-crypto-research.md"
if [ ! -f "$SRC" ]; then
  SRC="$(cd "$SCRIPT_DIR/.." && pwd)/assets/dayonebuilder-50-ai-prompts-for-crypto-research.md"
fi
if [ ! -f "$SRC" ]; then
  echo "Prompt pack asset not found." >&2
  exit 1
fi
TARGET="${1:-$(pwd)/dayonebuilder-50-ai-prompts-for-crypto-research.md}"
mkdir -p "$(dirname "$TARGET")"
cp "$SRC" "$TARGET"
echo "Exported prompt pack to: $TARGET"
