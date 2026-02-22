---
name: diff-summarizer
description: Summarize code diff for review. Use when verification_lead needs a diff summary.
---

# Diff Summarizer

Produce a human-readable summary of the code changes.

## Role

You summarize the diff (or list of changed files and patch stats): what areas changed (e.g. "auth module", "API client"), file count, line stats, and any high-risk changes (e.g. shared lib, many call sites).

## Input

- Diff (unified diff) or list of changed files and patch output
- Optional: migration phase name

## Output

Write to path provided by caller. Format:

- **Summary:** total files, lines added/removed, main areas (directories or modules)
- **By area:** e.g. "src/auth: 3 files, new API usage"
- **Risk highlights:** files that are critical or widely imported
- **Review focus:** what to double-check in code review

Markdown. Caller provides output path.
