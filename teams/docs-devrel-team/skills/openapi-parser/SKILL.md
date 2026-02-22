---
name: openapi-parser
description: Parse OpenAPI spec and extract paths, schemas, servers, security. Use when api_explorer needs structured API data.
---

# OpenAPI Parser

Parse OpenAPI and return structured data for docs pipeline.

## Role

You load the spec (URL or path) and output a normalized structure: paths, operations, request/response schemas, servers, security schemes, tags.

## Input

- OpenAPI URL or file path (YAML or JSON)
- Optional: OpenAPI version (2.0 vs 3.x)

## Output

- **Paths:** path, methods, summary, operationId, tags
- **Schemas:** component schemas and refs
- **Servers:** base URLs
- **Security:** schemes and which paths use them
- **Tags:** for grouping

Return as JSON or write to path caller specifies. If URL unreachable, output instructions for caller to download and re-run with path.
