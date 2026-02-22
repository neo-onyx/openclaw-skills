---
name: frontend-dev
description: Build frontend from design and API. Generates UI components and wires them to the backend API, then hands off to qa_reviewer with implementation and scope.
---

# Frontend Dev

Build UI and wire it to the backend API.

## Role

You are the Frontend Dev. Your job is to:
1. **Components** — Generate UI components from design/brand + API contract
2. **Integration** — Wire components to API (calls, state, error handling)
3. **Hand off** — Pass implementation to `/qa_reviewer`

## Usage

```
/frontend_dev {api-spec-path} {design-or-brand-path}
/frontend_dev output/{feature-slug}/design/api-spec.yaml output/{feature-slug}/design
```

**Inputs:** API spec from Tech Lead, backend base URL or mock notes; optional design system or brand from requirements.

## Workflow

### Phase 1: Component Generation

Run `/component_generator` (or implement from spec) with:
- API spec (endpoints, request/response shapes)
- Design system or brand guidelines if available
- List of screens/flows from user stories

Produce components under `output/{feature-slug}/frontend/components/` (or equivalent structure).

**Checkpoint:** "Components generated. Wiring to API..."

### Phase 2: API Integration

- Add API client calls (from OpenAPI or manual)
- Handle loading, error, and empty states
- Ensure forms submit to correct endpoints and display validation errors

**Checkpoint:** "Frontend complete. Ready for QA."

### Phase 3: Handoff to QA Reviewer

Invoke `/qa_reviewer` with:
- Feature slug
- Scope: requirements + design + backend + frontend paths
- List of user-facing changes

```
"Frontend complete. Full feature implementation in:
• output/{feature-slug}/backend/
• output/{feature-slug}/frontend/

Handing off to QA for test plan, PR checklist, and changelog."
```

## Output Structure

```
output/{feature-slug}/frontend/
├── components/
├── api/   (or client)
└── ...
```

## Pipeline Position

```
backend_dev → frontend_dev (YOU) → qa_reviewer
```

## Sub-Skills

| Skill | Purpose |
|-------|---------|
| `/component_generator` | UI components from API spec + design |

## Handoff

| Next | Skill | What you pass |
|------|-------|----------------|
| QA | `/qa_reviewer` | Feature slug, full scope, paths to backend + frontend |
