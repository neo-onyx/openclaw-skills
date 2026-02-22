---
name: file-level-plan
description: Produce file-level task list per migration phase. Use when migration_planner needs file-level breakdown.
---

# File Level Plan

Produce a file-level plan for each phase.

## Role

You assign files (and optionally line ranges or modules) to each phase so the refactor executor (or human) knows exactly what to change.

## Input

- Phase plan and analysis (patterns, tech debt, dependency map)
- Optional: exclude paths (e.g. vendor, generated)

## Output

Write to path provided by caller. Format:

- **Per phase:** phase name, list of files (paths), optional sub-tasks (e.g. "replace X with Y in these files")
- **Summary:** file count per phase, total files touched
- **Dependencies:** if file F is in phase 2 and phase 2 depends on phase 1, note it

Markdown or structured format. Caller provides output path.
