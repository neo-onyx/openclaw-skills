---
name: nav-structure-updater
description: Propose doc site nav and structure from reference and examples. Use when publisher needs sidebar/nav spec.
---

# Nav Structure Updater

Produce a nav/structure spec for the doc site.

## Role

You suggest sidebar order, categories, and hierarchy from the reference and examples folder structure.

## Input

- List of reference docs and example folders
- Optional: doc site generator (Docusaurus, MkDocs, etc.)

## Output

Write to path provided by caller. Format:

- **Sidebar/nav:** ordered list of doc links and labels; categories if needed
- **Home/landing:** what to show on index (e.g. quickstart, main links)
- **Generator-specific:** e.g. Docusaurus sidebar config snippet if requested

Markdown or YAML. Caller provides output path.
