# Full-Stack Product Team Template

Build a complete AI product team for turning ideas into shipped features. This template includes skills for requirements, architecture, backend/frontend implementation, and QA.

## The Pipeline

```
┌──────────────────┐   ┌─────────────┐   ┌──────────────┐   ┌────────────────┐   ┌─────────────┐
│ product_analyst  │ → │ tech_lead   │ → │ backend_dev  │ → │ frontend_dev   │ → │ qa_reviewer │
│ (requirements)  │   │ (design)    │   │ (APIs + data)│   │ (UI + glue)    │   │ (test+ship) │
└──────────────────┘   └─────────────┘   └──────────────┘   └────────────────┘   └─────────────┘
```

**Start here:** `/product_analyst {PRD or brief}` — runs the full pipeline.

---

## What's Included

### Orchestrators (entry points)

| Skill | What it does | Hands off to |
|-------|--------------|--------------|
| `/product_analyst` | Turn brief/PRD into requirements + user stories | → `/tech_lead` |
| `/tech_lead` | API design, schema, task breakdown | → `/backend_dev` |
| `/backend_dev` | Implement services/APIs from spec | → `/frontend_dev` |
| `/frontend_dev` | Build UI from design + API contract | → `/qa_reviewer` |
| `/qa_reviewer` | Tests, PR checklist, release notes | — |

### Research & Requirements (used by `/product_analyst`)

| Skill | What it does |
|-------|--------------|
| `/requirements_extractor` | Parse PRD/brief into structured requirements |
| `/user_story_writer` | Generate user stories and acceptance criteria |

### Design (used by `/tech_lead`)

| Skill | What it does |
|-------|--------------|
| `/api_designer` | Design REST/GraphQL APIs from requirements |
| `/schema_designer` | Design DB schema and data models |
| `/ticket_generator` | Break work into implementation tickets |

### Implementation (used by `/backend_dev` and `/frontend_dev`)

| Skill | What it does |
|-------|--------------|
| `/code_generator` | Generate backend code from OpenAPI/schema |
| `/test_writer` | Generate unit/integration tests from spec |
| `/component_generator` | Generate UI components from design + API |

### QA & Ship (used by `/qa_reviewer`)

| Skill | What it does |
|-------|--------------|
| `/pr_review_checklist` | Generate PR review checklist from scope |
| `/changelog_writer` | Generate release notes and changelog |

---

## Quick Start

### The Full Workflow

```bash
# Step 1: Turn idea into requirements
/product_analyst {PRD path or paste brief}
# Example: /product_analyst docs/feature-brief.md

# After requirements, product_analyst hands off to tech_lead

# Step 2: Architecture (automatic handoff)
# → API design, schema, tickets
# → Wait for your approval

# Step 3: Backend (automatic handoff)
# → Implement APIs and data layer from spec
# → Generate tests

# Step 4: Frontend (automatic handoff)
# → Build UI and wire to APIs
# → Component + integration work

# Step 5: QA & Ship (automatic handoff)
# → Test plan, PR checklist, changelog
# → Ready for review and merge
```

### Running Individual Skills

```bash
/product_analyst {brief}              # Just requirements
/tech_lead {repo} {feature}            # Just design
/backend_dev {spec-path}               # Just backend from spec
/frontend_dev {api-spec} {design}      # Just frontend
/requirements_extractor {doc}          # Just extract requirements
/api_designer {requirements}           # Just API design
```

---

## Setup

### 1. Add Skills to Your Workspace

Copy the `skills/` folder to your Clawdbot workspace:

```bash
cp -r skills/ ~/your-workspace/skills/
```

### 2. Configure Environment (optional)

If using code generation that calls external APIs (e.g. for scaffolding), copy and edit `.env` from `.env.example`. For local-only code gen, no keys required.

### 3. Output Folder

The pipeline writes to `output/` under your workspace. Create it or let the first skill create it.

---

## Outputs

The pipeline generates:

```
output/
├── {feature-slug}/
│   ├── requirements/
│   │   ├── requirements.md
│   │   └── user-stories.md
│   ├── design/
│   │   ├── api-spec.yaml
│   │   ├── schema.sql or schema.md
│   │   └── tickets.md
│   ├── backend/
│   │   ├── src/
│   │   └── tests/
│   ├── frontend/
│   │   └── components/
│   └── qa/
│       ├── test-plan.md
│       ├── pr-checklist.md
│       └── CHANGELOG.md
```

---

## Checkpoints & Approvals

1. **After requirements** — Confirm scope and stories
2. **After tech lead design** — Approve API + schema + tickets
3. **After backend** — Review code and tests
4. **After frontend** — Review UI and integration
5. **Before merge** — QA checklist and changelog

---

## File Structure

```
fullstack-product-team/
├── README.md
├── TOOLS.md
├── .env.example
├── .gitignore
└── skills/
    ├── README.md
    ├── product-analyst/
    ├── tech-lead/
    ├── backend-dev/
    ├── frontend-dev/
    ├── qa-reviewer/
    ├── requirements-extractor/
    ├── user-story-writer/
    ├── api-designer/
    ├── schema-designer/
    ├── ticket-generator/
    ├── code-generator/
    ├── test-writer/
    ├── component-generator/
    ├── pr-review-checklist/
    └── changelog-writer/
```

---

## License

MIT - Use freely, modify as needed.
