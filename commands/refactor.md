---
description: Perform substantial architectural refactors and codebase reorganization
model: openrouter/minimax/minimax-m2.7
---

Execute a broad refactor focused on improving architecture, file organization, and long-term maintainability.

If the user includes text after `/refactor`, treat that text as the primary scope and goals. If no extra text is provided, choose the highest-impact refactor opportunities in the current codebase.

This command may include:

- Splitting large files/modules into clearer units.
- Moving files into more coherent folder structures.
- Extracting shared logic into reusable abstractions.
- Refactoring duplicated code when consolidation fits the defined scope and boundaries.
- Improving boundaries between layers (UI, domain, infrastructure, etc.).
- Renaming modules/functions for clearer intent.
- Reducing coupling and improving dependency direction.

# Primary Behaviour

1. Understand the current architecture and identify the highest-impact refactor path.
2. Define a clear target structure and apply refactors across files/directories.
3. Update imports, contracts, and related tests/types as needed.
4. Run relevant validation (typecheck/tests/build) for affected areas.
5. Summarize the architectural changes, rationale, and any follow-up refactor opportunities.

## Guardrails

- Preserve runtime behavior unless the user explicitly asks for behavior changes.
- Prefer incremental, reviewable commits over one giant rewrite.
- Keep TypeScript types strict and aligned with existing project patterns.
- Avoid changing generated artifacts unless required by project workflow.
