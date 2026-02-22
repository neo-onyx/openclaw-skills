---
name: sample-generator
description: Generate runnable code samples from API spec in target language(s). Use when example_tutorial_lead needs samples.
---

# Sample Generator

Produce runnable code samples that call the API.

## Role

You write complete, runnable samples (e.g. curl, Python, JavaScript) for main flows: auth, list resource, get by id, create, update, delete. Include env/config placeholder (e.g. API key, base URL).

## Input

- OpenAPI spec and reference docs
- Optional: languages (default: curl, Python, JavaScript)
- Optional: which flows to cover

## Output

Write to path provided by caller. Structure:

- **Per language:** folder or file (e.g. `python/`, `curl/`)
- **Per flow:** file or section with code + short comment
- **README or index:** how to run (env vars, install)

Caller provides output path and languages.
