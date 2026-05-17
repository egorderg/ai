---
description: Stage all current git changes and create a local commit without pushing
model: openai/gpt-5.4
---

Create a local git commit for the current work.

If the user includes text after `/commit`, use that as the base for the commit message.
If they do not, inspect the staged and unstaged changes and write a concise commit message that matches the repository's existing style.

## Required behaviour

1. Review the current git state (`git status`, `git diff`, and recent commit messages).
2. Stage all relevant changes with `git add -A`.
3. Create a commit locally.
4. Do **not** push to any remote.

## Guardrails

- Never run `git push`.
- Do not create an empty commit.
- If there is nothing to commit, say so clearly.
- Do not change git config.
- Follow existing repository commit message conventions.
