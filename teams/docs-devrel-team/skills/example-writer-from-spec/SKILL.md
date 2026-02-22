---
name: example-writer-from-spec
description: Generate request/response examples from OpenAPI spec. Use when doc_writer needs examples to embed in reference docs.
---

# Example Writer From Spec

Produce request and response examples from the OpenAPI spec.

## Role

You use schema examples or generate minimal valid examples (body, headers, query) and sample responses (200, 4xx) for key operations.

## Input

- OpenAPI spec (paths and schemas)
- Optional: which operations to prioritize

## Output

- **Per operation (or key set):** request example (curl + optional body JSON), response example (JSON body), error example if relevant
- Format: embeddable in markdown (code blocks with language)
- Caller specifies output path or "inline for doc_generator"
