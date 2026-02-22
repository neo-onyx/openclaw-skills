---
name: test-writer
description: Generate unit and integration tests from API spec and implementation. Produces tests for routes and core logic. Use when backend_dev or qa_reviewer needs test coverage from the spec.
---

# Test Writer

Generate tests from API spec and backend implementation.

## Role

You write tests that validate the API contract and core behavior.

## Input

- Path to `api-spec.yaml` and backend implementation (e.g. `output/{feature-slug}/backend/src`)
- Scope: unit only, integration only, or both
- Optional: test framework (e.g. Jest, pytest, Go testing)

## Output

Write to the path provided by the caller (e.g. `output/{feature-slug}/backend/tests/`) with:

- **Unit tests:** For pure logic, validation, mapping (no HTTP/DB if possible, or mocked).
- **Integration tests:** For key endpoints: status codes, response shape, and critical success/error cases from the spec.

Structure: mirror backend layout (e.g. `routes/users.test.js`) or single `api.test.js` per resource.

## Rules

- Tests must be runnable and deterministic; use mocks or test DB as appropriate.
- Cover happy path and at least one error path per endpoint (e.g. 400, 404).
- Caller specifies framework and output path.
