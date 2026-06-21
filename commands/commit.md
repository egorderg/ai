---
description: Stage all current git changes and create a local commit without pushing
model: openai/gpt-5.4
---

Create a local git commit for the current work.

If the user includes text after `/commit`, use that as the base for the commit message.
If they do not, inspect the staged and unstaged changes and write a concise commit message that matches the repository's existing style.

## Commit message convention

Use this format:

`<type>(<optional scope>): <description>`

Empty line as separator

`<optional body>`

Empty line as separator

`<optional footer>`

Additional rules:

- Keep the subject line short and imperative.
- Prefer lowercase for the type and description, and do not end the subject line with a period.
- Omit the scope when it is not helpful.
- Use the body for context, rationale, or important implementation notes.
- Use the footer for metadata or follow-up references when needed.

Allowed types:

- `feat`: commits that add, adjust, or remove a feature to, of, or from the API or UI
- `fix`: commits that fix an API or UI bug of a preceding `feat` commit
- `refactor`: commits that rewrite or restructure code without altering API or UI behavior
- `perf`: special type of `refactor` commit that specifically improves performance
- `style`: commits that address code style (for example whitespace, formatting, or missing semicolons) and do not affect application behavior
- `test`: commits that add missing tests or correct existing ones
- `docs`: commits that exclusively affect documentation
- `build`: commits that affect build-related components such as build tools, dependencies, or project version
- `ops`: commits that affect operational aspects such as infrastructure, deployment scripts, CI/CD pipelines, backups, monitoring, or recovery procedures
- `chore`: commits for tasks like the initial commit, modifying `.gitignore`, and similar repository maintenance work

## Required behaviour

1. Review the current git state (`git status`, `git diff`, and recent commit messages).
2. Stage all changes with `git add -A`.
3. Create a commit locally.
4. Do **not** push to any remote.

## Guardrails

- Never run `git push`.
- Do not create an empty commit.
- If there is nothing to commit, say so clearly.
- Do not change git config.
- Follow this commit message convention.
