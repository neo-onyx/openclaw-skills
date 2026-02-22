---
name: component-generator
description: Generate frontend UI components from API spec and optional design system. Produces components that call the API and handle loading/error states. Use when frontend_dev needs to build screens from the contract.
---

# Component Generator

Generate UI components from API spec and design context.

## Role

You produce component code that matches the API contract and, if provided, design/brand guidelines.

## Input

- Path to `api-spec.yaml`
- Optional: design system or brand (colors, typography, spacing)
- List of screens/flows (e.g. from user stories: "Login", "Dashboard", "Settings")

## Output

Write to the path provided by the caller (e.g. `output/{feature-slug}/frontend/components/`) with:

- **Per screen/flow:** One or more components (e.g. `LoginForm.tsx`, `Dashboard.tsx`).
- **API client:** Thin client or hooks that call the endpoints (method, path, body from OpenAPI).
- **State:** Loading, error, empty, success; form validation where applicable.

Use a single framework (e.g. React, Vue) as specified by the caller; default to React if not specified.

## Rules

- Components must use the API spec for request/response shapes and endpoints.
- Include basic accessibility (labels, focus, errors).
- Caller provides output path and framework preference.
