---
name: tech-debt-linter
description: List tech debt and migration candidates from dependency map and patterns. Use when codebase_analyst needs tech debt report.
---

# Tech Debt Linter

Produce a tech debt and migration-candidate list.

## Role

You combine dependency map and pattern detection into a prioritized list: outdated deps, deprecated usage, code smells relevant to the migration goal, and suggested order of work.

## Input

- Dependency map and pattern detection output
- Optional: migration goal

## Output

Write to path provided by caller:

- **Summary:** total items, by category (deps, patterns, other)
- **Prioritized list:** item, location, effort (S/M/L), risk, suggested phase
- **Blockers:** what must be done first
- **Optional:** quick wins vs. large refactors

Markdown. Caller provides output path.
