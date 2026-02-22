---
name: doc-generator
description: Generate reference documentation from OpenAPI spec. Use when doc_writer needs reference docs per endpoint/resource.
---

# Doc Generator

Produce reference docs from OpenAPI.

## Role

You write one doc per resource or logical group (or one big reference): path, method, description, parameters, request body, responses, errors, example snippet.

## Input

- OpenAPI spec path and api-summary
- Optional: one doc per path vs. grouped

## Output

Write to path provided by caller. Each doc:

- **Title:** resource or endpoint name
- **URL & method**
- **Description**
- **Parameters:** path, query, header with types and required
- **Request body:** schema and example
- **Responses:** 200, 4xx, 5xx with schema
- **Example:** minimal curl or code snippet

Markdown. Caller provides output path and grouping preference.
