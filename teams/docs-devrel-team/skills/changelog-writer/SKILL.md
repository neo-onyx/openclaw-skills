---
name: changelog-writer
description: Write doc or release changelog from list of new/updated docs. Use when publisher needs changelog entry.
---

# Changelog Writer (Docs)

Produce a changelog entry for documentation or API release.

## Role

You write a changelog section: date/version, added/updated/deprecated docs or endpoints, and migration notes if any.

## Input

- Project name and list of new/updated docs or endpoints
- Optional: version or date

## Output

Write to path provided by caller. Format:

```markdown
## [Version or Date] - Docs / API

### Added
- New section: ...
- New endpoint: ...

### Changed
- Updated: ...

### Deprecated
- ...
```

Caller provides output path.
