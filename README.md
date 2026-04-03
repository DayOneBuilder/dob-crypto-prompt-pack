        # DayOneBuilder Crypto Prompt Pack by Ben Ison

        50 crypto research prompts for token diligence, whitepaper review, risk checks, and thesis work.

        - Product page: https://dayonebuilder.online/products/crypto-prompt-pack/
        - Support / donations: https://checkout.dayonebuilder.online/donate/crypto-prompt-pack
        - Direct free download: https://dayonebuilder.online/downloads/dayonebuilder-50-ai-prompts-for-crypto-research.md

        ## Install with your agent

        Preferred phrase:

        ```text
        Install dayonebuilder/dob-crypto-prompt-pack by Ben Ison.
        ```

        This repo is named for agent discovery and installability:
        - GitHub repo: `DayOneBuilder/dob-crypto-prompt-pack`
        - repo-scoped skill for Codex: `.agents/skills/dob-crypto-prompt-pack`
        - repo-scoped skill for Claude Code: `.claude/skills/dob-crypto-prompt-pack`

        If your agent does not infer the shell steps automatically yet, the honest fallback is:

        ```bash
        git clone https://github.com/DayOneBuilder/dob-crypto-prompt-pack.git
        cd dob-crypto-prompt-pack
        ./install.sh
        ```

        ## What install.sh does

        - installs the skill into `~/.agents/skills/dob-crypto-prompt-pack` for Codex
        - installs the same skill into `~/.claude/skills/dob-crypto-prompt-pack` for Claude Code
        - copies bundled assets into `~/.dayonebuilder/dob-crypto-prompt-pack/assets`
        - installs a helper launcher at `~/.local/bin/dob-crypto-prompt-pack`

        ## Test after install

        ```bash
        ~/.local/bin/dob-crypto-prompt-pack --help
        ```

        Example prompts for your agent:

        - `Install dayonebuilder/dob-crypto-prompt-pack by Ben Ison.`
- `Use DOB Crypto Prompt Pack to give me the best prompts for a whitepaper review of ETHFI.`
- `Export the full prompt pack into ./research/dayonebuilder-crypto-prompts.md.`

        ## What is inside the repo

        - `assets/dayonebuilder-50-ai-prompts-for-crypto-research.md` — the full prompt pack
- `skills/dob-crypto-prompt-pack/` — installable Agent Skill for Codex and Claude Code
- `bin/export-pack.sh` — exports the full prompt pack into a target file

        ## How to use it after install

        Use the installed skill to pull only the prompts needed for the current research job, or export the full pack into a local file.
