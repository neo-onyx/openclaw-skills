---
name: changelog-writer
description: Generate changelog or release notes from feature scope. Consumes feature name, user-facing changes, and optional API/config changes. Use when qa_reviewer finalizes the release package.
---

# Changelog Writer

Write changelog or release notes for the feature.

## Role

You produce a clear, user- and dev-friendly changelog entry.

## Input

- Feature name and slug
- User-facing changes (from user stories or summary)
- Optional: API changes, config changes, breaking changes
- Optional: version or date

## Output

Write to the path provided by the caller (e.g. `output/{feature-slug}/qa/CHANGELOG.md` or append to project CHANGELOG) with:

### Structure

```markdown
## [Version or Date] - {Feature Name}

### Added
- User-visible change 1
- User-visible change 2
- ...

### Changed
- Any behavior change or improvement
- ...

### API / Developer
- New endpoints or schema changes (if relevant)
- Config or env changes
- Breaking changes (call out explicitly)

### Fixed
- (If any bugs were part of this feature)
```

## Rules

- Use consistent tense (e.g. past or present) and keep entries short.
- Call out breaking changes and migration steps if any.
- Caller provides output path and version/date if desired.
