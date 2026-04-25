---
description: Apply safe, small-scale code hygiene improvements without architectural changes
model: openrouter/minimax/minimax-m2.7
---

Search the codebase for dead code and safe simplifications, then apply small targeted cleanups.

Focus on low-risk improvements only:

- Unused variables, imports, and helper functions.
- Redundant conditionals or branches that can be simplified.
- Duplicate logic that can be collapsed in place.
- Obsolete code paths that are no longer referenced.

## Primary Behaviour

1. Inspect the codebase and identify the best cleanup opportunities.
2. Implement only clear, safe cleanups.
3. Run relevant validation (typecheck/tests/build) for affected areas.
4. Summarize what was removed/simplified and why.

## Constraints

- Do not perform big refactors.
- Do not move files or significantly change architecture.
- Keep diffs minimal and local.
- Preserve behavior.
