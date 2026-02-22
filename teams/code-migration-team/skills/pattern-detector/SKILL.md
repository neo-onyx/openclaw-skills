---
name: pattern-detector
description: Detect code patterns relevant to migration (e.g. deprecated API usage). Use when codebase_analyst needs pattern list.
---

# Pattern Detector

Detect patterns in the codebase that should be migrated.

## Role

You search the repo for patterns: deprecated API calls, old syntax, legacy imports, or patterns specified by the migration goal. Output file paths and optionally line numbers or snippets.

## Input

- Repo path and analysis (dependency map, tech debt)
- Optional: migration goal and pattern list (e.g. "old React lifecycle", "callback API")

## Output

Write to path provided by caller:

- **Per pattern:** pattern name, description, file count, list of files (and line ranges or snippets)
- **Summary:** total occurrences, risk (e.g. many usages = higher effort)
- **Suggested order:** which patterns to fix first (e.g. by dependency)

Caller provides output path.
