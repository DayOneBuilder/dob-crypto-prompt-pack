#!/usr/bin/env bash
set -euo pipefail

SLUG="dob-crypto-prompt-pack"
SKILL_NAME="dob-crypto-prompt-pack"
TITLE="DayOneBuilder Crypto Prompt Pack by Ben Ison"
PRODUCT_URL="https://dayonebuilder.online/products/crypto-prompt-pack/"
SUPPORT_URL="https://checkout.dayonebuilder.online/donate/crypto-prompt-pack"
REPO_URL="https://github.com/DayOneBuilder/dob-crypto-prompt-pack"
INSTALL_PHRASE="Install dayonebuilder/dob-crypto-prompt-pack by Ben Ison."
PRIMARY_HELPER="export-pack.sh"

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PRODUCT_HOME="${HOME}/.dayonebuilder/${SLUG}"
CODEX_SKILL_DIR="${HOME}/.agents/skills/${SKILL_NAME}"
CLAUDE_SKILL_DIR="${HOME}/.claude/skills/${SKILL_NAME}"
LAUNCHER="${HOME}/.local/bin/${SLUG}"

mkdir -p "${HOME}/.agents/skills" "${HOME}/.claude/skills" "${HOME}/.local/bin" "${PRODUCT_HOME}"
rm -rf "${PRODUCT_HOME}/assets" "${PRODUCT_HOME}/bin" "${CODEX_SKILL_DIR}" "${CLAUDE_SKILL_DIR}"
mkdir -p "${PRODUCT_HOME}/assets" "${PRODUCT_HOME}/bin"

cp -R "${ROOT}/assets/." "${PRODUCT_HOME}/assets/"
cp -R "${ROOT}/bin/." "${PRODUCT_HOME}/bin/"
chmod +x "${PRODUCT_HOME}/bin/"* 2>/dev/null || true

cp -R "${ROOT}/skills/${SKILL_NAME}" "${CODEX_SKILL_DIR}"
cp -R "${ROOT}/skills/${SKILL_NAME}" "${CLAUDE_SKILL_DIR}"

cat > "${LAUNCHER}" <<'LAUNCHER'
#!/usr/bin/env bash
set -euo pipefail
PRODUCT_HOME="${HOME}/.dayonebuilder/dob-crypto-prompt-pack"
PRIMARY_HELPER="${PRODUCT_HOME}/bin/export-pack.sh"
if [ ! -x "$PRIMARY_HELPER" ]; then
  echo "Primary helper not found: $PRIMARY_HELPER" >&2
  exit 1
fi
if [ $# -eq 0 ] || [ "${1:-}" = "--help" ] || [ "${1:-}" = "help" ]; then
  cat <<HELP
DayOneBuilder Crypto Prompt Pack by Ben Ison installed.
Repo: https://github.com/DayOneBuilder/dob-crypto-prompt-pack
Product page: https://dayonebuilder.online/products/crypto-prompt-pack/
Support: https://checkout.dayonebuilder.online/donate/crypto-prompt-pack

Installed paths:
- Assets: ${HOME}/.dayonebuilder/dob-crypto-prompt-pack/assets
- Codex skill: ${HOME}/.agents/skills/dob-crypto-prompt-pack
- Claude skill: ${HOME}/.claude/skills/dob-crypto-prompt-pack

Helper:
- $PRIMARY_HELPER

Agent install phrase:
- Install dayonebuilder/dob-crypto-prompt-pack by Ben Ison.
HELP
  exit 0
fi
exec "$PRIMARY_HELPER" "$@"
LAUNCHER
chmod +x "${LAUNCHER}"

cat > "${PRODUCT_HOME}/INSTALLATION.txt" <<INSTALL
DayOneBuilder Crypto Prompt Pack by Ben Ison
Repo: https://github.com/DayOneBuilder/dob-crypto-prompt-pack
Product page: https://dayonebuilder.online/products/crypto-prompt-pack/
Support: https://checkout.dayonebuilder.online/donate/crypto-prompt-pack
Install phrase: Install dayonebuilder/dob-crypto-prompt-pack by Ben Ison.
Installed at: $(date -u +'%Y-%m-%dT%H:%M:%SZ')
INSTALL

cat <<DONE
Installed ${TITLE}
- Repo: ${REPO_URL}
- Product page: ${PRODUCT_URL}
- Codex skill: ${CODEX_SKILL_DIR}
- Claude skill: ${CLAUDE_SKILL_DIR}
- Assets: ${PRODUCT_HOME}/assets
- Helper: ${HOME}/.local/bin/${SLUG}

Tell your agent:
${INSTALL_PHRASE}
DONE
