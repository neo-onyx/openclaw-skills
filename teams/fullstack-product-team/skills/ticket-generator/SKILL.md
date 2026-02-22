---
name: ticket-generator
description: Break design into implementation tickets. Consumes requirements, user stories, API spec, and schema; outputs ordered tickets for backend and frontend with acceptance criteria and estimates. Use when tech_lead needs a task breakdown for the team.
---

# Ticket Generator

Turn design artifacts into implementation tickets.

## Role

You produce an ordered list of implementation tasks that backend and frontend can execute.

## Input

- Path to `requirements.md`, `user-stories.md`, `api-spec.yaml`, `schema.sql`/`schema.md`
- Optional: labels (e.g. backend, frontend, infra)

## Output

Write to the path provided by the caller (e.g. `output/{feature-slug}/design/tickets.md`) with:

### Structure

```markdown
# Implementation Tickets: {Feature Name}

## Order of work
Tickets are ordered by dependency. Backend data/API first, then frontend, then integration.

---

## T1: [Ticket title]
**Type:** backend | frontend | integration
**Stories:** US-1, US-2
**Description:** [What to build]
**Acceptance criteria:**
- [ ] ...
- [ ] ...
**Estimate:** S | M | L
**Depends on:** (none) | T2, T3

---

## T2: ...
```

## Rules

- Order by dependency: schema/migrations → API → frontend → E2E/integration.
- Each ticket should be completable in one PR where possible.
- Reference user stories and API paths/schema objects for traceability.
- Caller provides output path.
