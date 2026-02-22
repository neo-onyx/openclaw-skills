---
name: code-generator
description: Generate backend code from OpenAPI spec and schema. Produces route/handler code, data access layer, and wiring. Use when backend_dev needs implementation stubs or full implementation from design.
---

# Code Generator

Generate backend implementation from API spec and schema.

## Role

You produce runnable backend code that implements the API and data layer.

## Input

- Path to `api-spec.yaml` and `schema.sql` or `schema.md`
- Optional: stack (e.g. Node/Express, Python/FastAPI, Go) and output path

## Output

Write to the path provided by the caller (e.g. `output/{feature-slug}/backend/src/`) with:

- **Routes/controllers:** One module per resource or group, handlers that match OpenAPI paths and methods.
- **Models/data layer:** Entities and persistence that match the schema (e.g. ORM models, repositories, or raw SQL).
- **Wire-up:** App entrypoint that registers routes and DB/config.

Structure depends on stack (e.g. `routes/`, `models/`, `app.js` or `main.py`).

## Rules

- Code must align with OpenAPI (paths, methods, request/response shapes) and schema (tables, columns).
- Prefer clear structure over cleverness; add short comments for non-obvious logic.
- Caller specifies stack and output path; default to one stack if not specified (e.g. Node/Express or Python/FastAPI).
