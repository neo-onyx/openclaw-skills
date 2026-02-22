# TOOLS.md - Full-Stack Product Team

Setup and tooling for the product pipeline. Most skills work with local files and prompts; optional integrations below.

## Quick Start

1. Copy `skills/` into your Clawdbot (or Cursor) workspace.
2. Create an `output/` folder or let the first skill create it.
3. No API keys required for core workflow (requirements → design → code gen from spec).

---

## Optional: Code Generation APIs

If you want the pipeline to call external code-generation or scaffolding services:

| Tool | Purpose | Required? |
|------|---------|-----------|
| Local LLM / Claude | All spec writing, code gen, tests | Yes (via Clawdbot/Cursor) |
| OpenAPI codegen | Generate client/server stubs from `api-spec.yaml` | No (can be manual) |
| DB migrations | Generate migrations from schema | No (skill can output SQL) |

---

## Output Conventions

- **Feature slug:** Derive from PRD title or brief (e.g. `user-auth`, `checkout-flow`).
- **Paths:** All outputs under `output/{feature-slug}/` with subdirs: `requirements/`, `design/`, `backend/`, `frontend/`, `qa/`.
- **API spec:** Prefer OpenAPI 3.0 YAML; schema as SQL or structured markdown.

---

## Pipeline Position

```
product_analyst → tech_lead → backend_dev → frontend_dev → qa_reviewer
```

Each orchestrator reads from the previous stage's outputs and writes the next stage's inputs.
