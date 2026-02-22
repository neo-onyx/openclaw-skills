---
name: endpoint-summarizer
description: Summarize API endpoints and groups for documentation. Use when api_explorer needs an API summary.
---

# Endpoint Summarizer

Produce a human-readable API summary from parsed OpenAPI.

## Role

You turn the parsed spec into a summary: resource groups, main endpoints, auth, versioning, and key concepts.

## Input

- Parsed OpenAPI (paths, schemas, tags)
- Optional: api-summary output path

## Output

Write to path provided by caller. Structure:

- **Overview:** one paragraph on what the API does
- **Resources/Groups:** by tag or path prefix; short description per group
- **Key endpoints:** 5–10 most important operations with one-line description
- **Auth:** how to authenticate (e.g. API key, OAuth)
- **Versioning:** if present in spec

Markdown. Caller provides output path.
