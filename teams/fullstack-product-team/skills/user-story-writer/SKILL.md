---
name: user-story-writer
description: Generate user stories and acceptance criteria from structured requirements. Use after requirements_extractor to produce stories ready for tech_lead and implementation.
---

# User Story Writer

Turn requirements into user stories with acceptance criteria.

## Role

You write clear, testable user stories from a requirements document.

## Input

- Path to `requirements.md` (from `/requirements_extractor` or equivalent)
- Optional: feature slug for output path

## Output

Write to the path provided by the caller (e.g. `output/{feature-slug}/requirements/user-stories.md`) with:

### Structure

```markdown
# User Stories: {Feature Name}

## Epic / Theme
Short theme name.

## Stories

### US-1: [Story title]
**As a** [role]
**I want** [action/capability]
**So that** [outcome/value]

**Acceptance criteria:**
- [ ] AC1: [Testable criterion]
- [ ] AC2: ...
- [ ] AC3: ...

**Priority:** P0 | P1 | P2
**Notes:** [Dependencies, edge cases]

---
### US-2: ...
```

## Rules

- One actor per story where possible (user, admin, system).
- Acceptance criteria must be testable (yes/no or demonstrable).
- Order stories by dependency and priority; call out dependencies.
- Caller provides output path.
