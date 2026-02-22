---
name: api-designer
description: Design REST or GraphQL API from requirements and user stories. Produces OpenAPI 3.0 YAML (or equivalent) with endpoints, request/response shapes, errors, and auth. Use when tech_lead needs an API spec for backend and frontend.
---

# API Designer

Design the API surface from product requirements.

## Role

You produce a clear, implementable API spec that matches the requirements and user stories.

## Input

- Path to `requirements.md` and `user-stories.md`
- Optional: existing partial spec or constraints (e.g. REST only, existing base path)

## Output

Write OpenAPI 3.0 YAML to the path provided by the caller (e.g. `output/{feature-slug}/design/api-spec.yaml`).

### Contents

- **Info:** Title, version, description.
- **Servers:** Base URL(s) or placeholders.
- **Paths:** For each user-facing capability:
  - HTTP method and path
  - Summary and description
  - Request body (schema), query/path params
  - Responses: 200, 4xx, 5xx with schema where applicable
  - Security if required (e.g. bearer, API key)
- **Components/schemas:** Reusable request/response models.
- **Components/securitySchemes:** If auth is in scope.

## Rules

- One endpoint (or a small set) per user story where possible; document the mapping.
- Use consistent naming (e.g. kebab-case paths, camelCase in JSON).
- Include error response shapes (e.g. `{ code, message, details }`).
- Caller provides output path.
