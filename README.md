# AI Workflow

This repository is a starter template for an OpenCode-driven development workflow.

It is organized around:

- Primary agents that handle specification and implementation
- Slash commands that trigger common workflows
- Optional skills that extend or customize behavior

## Structure

- `opencode.json`: OpenCode configuration, default agent selection, and permissions
- `agents/`: primary agent definitions used by the workflow
- `commands/`: slash commands for common tasks
- `skills/`: optional workflow extensions

## Primary Agents

Only the primary agents are part of the default user-facing workflow.

### `specify`

The default primary agent.

Use it to:

- clarify requests
- investigate the codebase
- turn ideas into an actionable spec
- surface assumptions, scope, and open questions

Typical output:

- a concise proposal
- explicit scope and non-goals
- testable requirements
- phased task lists when needed

### `implement`

The execution-focused primary agent.

Use it to:

- inspect the codebase
- make code changes
- maintain a task list during implementation
- validate the result
- summarize completed work

Typical workflow:

1. Understand the request
2. Inspect relevant code
3. Create and update a todo list
4. Implement the change
5. Run validation
6. Summarize outcomes and follow-ups

## Commands

The `commands/` directory contains reusable slash-command workflows.

### `/init`

Creates or updates `AGENTS.md` for the current repository.

Use it when you want a compact, repo-specific instruction file that captures:

- important commands
- architecture notes
- testing or environment gotchas
- workflow details future agents should know

### `/research`

Enters research mode.

Use it to:

- explore an idea before implementation
- compare approaches
- investigate an issue deeply
- map relevant parts of the codebase

This command is intentionally for thinking and investigation, not coding.

### `/refactor`

Runs a larger refactoring workflow.

Use it for:

- structural cleanup
- reorganizing modules or folders
- extracting shared abstractions
- improving architecture without changing intended behavior

### `/cleanup`

Runs a safe, small-scale cleanup workflow.

Use it for:

- removing dead code
- deleting unused imports or variables
- simplifying low-risk logic
- making small local hygiene improvements

## Skills

The `skills/` directory is reserved for custom workflow extensions.

Skills can extend the behavior of the default workflow with project-specific capabilities, for example:

- a custom review flow
- a finish or handoff workflow
- release preparation steps
- domain-specific checks or validations

Use skills when the base agents and commands are not enough and you want reusable behavior tailored to your team or repository.
