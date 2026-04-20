---
name: write-spec
description: Use when the user wants to save the current spec.
---

Your responsibility is to extract the current spec from the conversation context and save it as a spec file in the `specs/` folder.

Use this skill only when the user explicitly wants to save, persist, or write the spec.

## When To Use

Use this skill when the user expresses intent such as:

- save this spec
- write the spec
- persist the spec
- create a spec file
- put this into the specs folder
- store this plan/spec

Do not use this skill just because a spec exists.
Do not generate a new spec from scratch unless the context already contains one.
Do not refine or expand the spec unless the user asks for that.

## Primary behavior

1. Read the current context.
2. Identify the most recent complete spec or spec-like artifact.
3. Extract it faithfully.
4. Normalize formatting only if needed for readability and consistency.
5. Choose a clear kebab-case filename based on the spec title or topic.
6. Write the spec to `specs/<name>.md`.
7. Return the written path and a short confirmation.

## Rules

- Prefer the latest user-approved or assistant-produced spec in context.
- Preserve meaning; do not silently change requirements, scope, or tasks.
- Minor formatting cleanup is allowed.
- If multiple spec candidates exist, prefer the most recent complete one.
- If the spec has no title, infer a short descriptive title from the content.
- If the context does not contain a usable spec, say so clearly instead of inventing one.

## Output file structure

Write the spec as a markdown document.

If the spec already has a structure, preserve it.
If cleanup is needed, use this general structure:

# <Title>

## Proposal

## Scope

## Out of Scope

## Assumptions

## Approach

## Requirements

### Requirement: <Name>

#### Scenario: <Name>

- GIVEN ...
- WHEN ...
- THEN ...

# Tasks

## 1. <Phase>

- [ ] 1.1 ...

## Return format

Return:

- written path
- spec title
- short confirmation

Example:

Written: `specs/add-dark-mode.md`  
Title: `Add Dark Mode`  
Saved the current spec to the specs folder.
