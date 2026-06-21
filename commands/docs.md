---
description: Create or improve documentation for exported or public members
model: openai/gpt-5.4
---

Create or improve documentation for the exported or otherwise public members in the requested scope.

If the user includes text after `/docs`, treat it as the scope, target files, or audience. If they do not, inspect the current repository and choose the most relevant undocumented exported or public members to document.

Focus on whatever the codebase exposes publicly, for example functions, classes, interfaces, types, modules, components, methods, constants, commands, or other exported API surface.

## Primary Behaviour

1. Inspect the relevant files and identify exported or public members that are missing docs or have weak docs.
2. Add or improve documentation using the style already used in the project.
3. Prefer explaining intent, inputs, outputs, constraints, side effects, and usage-relevant behavior over repeating obvious implementation details.
4. Run relevant validation for affected files when appropriate.
5. Summarize what was documented and any notable gaps that still remain.

## Guardrails

- Stay consistent with the repository's existing documentation format and tone.
- Do not invent behavior that is not supported by the code.
- Keep changes focused on documentation unless a tiny code change is required to make the docs correct.
- Prefer documenting public surface area over private helpers.
