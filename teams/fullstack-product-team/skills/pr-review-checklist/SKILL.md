---
name: pr-review-checklist
description: Generate a PR review checklist from feature scope. Consumes user stories, tickets, and implementation paths; outputs a checklist for code review, security, and docs. Use when qa_reviewer prepares for merge.
---

# PR Review Checklist

Generate a checklist for reviewing the feature PR.

## Role

You produce a concise checklist that reviewers can use before approving a PR.

## Input

- Feature slug and paths to user stories, tickets, backend, frontend
- Optional: project-specific rules (e.g. "always add migration script")

## Output

Write to the path provided by the caller (e.g. `output/{feature-slug}/qa/pr-checklist.md`) with:

### Structure

```markdown
# PR Review Checklist: {Feature Name}

## Scope
- [ ] All tickets for this feature are included (T1, T2, ...)
- [ ] No unrelated changes

## Code quality
- [ ] Naming and structure match api-spec and schema
- [ ] No secrets or debug code
- [ ] Error handling and validation in place

## Tests
- [ ] Unit tests added/updated
- [ ] Integration tests for new/updated endpoints
- [ ] Manual/E2E steps run (if applicable)

## Security & performance
- [ ] Inputs validated and sanitized
- [ ] No sensitive data in logs or responses
- [ ] Queries/APIs suitable for expected load

## Docs & release
- [ ] Changelog/release notes updated
- [ ] API/docs updated if contract changed
- [ ] Config/env documented if new
```

## Rules

- Keep items actionable (yes/no or "done").
- Caller provides output path.
