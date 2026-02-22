---
name: schema-designer
description: Design database or data model from requirements and API spec. Produces schema (SQL DDL or structured markdown) with tables, columns, indexes, and relationships. Use when tech_lead needs a data model for backend implementation.
---

# Schema Designer

Design the data model from requirements and API.

## Role

You produce a consistent schema that supports the API and user stories.

## Input

- Path to `requirements.md`, `user-stories.md`, and `api-spec.yaml`
- Optional: target DB (e.g. PostgreSQL, SQLite) or "agnostic"

## Output

Write to the path provided by the caller, e.g.:
- `output/{feature-slug}/design/schema.sql` — DDL (CREATE TABLE, indexes, FKs), or
- `output/{feature-slug}/design/schema.md` — Tables and fields in markdown if DB-agnostic

### SQL output

- Tables and columns with types
- Primary keys, foreign keys, indexes
- Constraints (NOT NULL, UNIQUE) where relevant
- Short comments per table/column

### Markdown output

- Table name, purpose
- Columns: name, type, nullable, default, notes
- Relationships and key constraints

## Rules

- Align entity names and fields with API request/response models where possible.
- Normalize where it helps; denormalize only when justified (e.g. performance).
- Caller specifies output path and preference (SQL vs markdown).
