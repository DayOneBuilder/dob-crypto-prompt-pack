        ---
        name: dob-crypto-prompt-pack
        description: 50 crypto research prompts for token diligence, whitepaper review, risk checks, and thesis work.
        ---

        Use this skill when the user wants a crypto research prompt set, token due-diligence prompts, whitepaper review prompts, risk-check prompts, or a repeatable checklist for a token/protocol thesis.

Workflow:
1. Read `references/usage.md` first.
2. Load `references/prompt-pack.md` only as needed.
3. Return the smallest relevant subset of prompts instead of dumping the whole pack unless the user explicitly asks for the full file.
4. If the user wants the full pack locally, point them to `~/.dayonebuilder/dob-crypto-prompt-pack/bin/export-pack.sh` after installation, or `bin/export-pack.sh` when working inside the repo clone.
5. Keep the prompts practical, skeptical, and focused on evidence.

