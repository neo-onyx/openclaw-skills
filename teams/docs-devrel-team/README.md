# Documentation / DevRel Team Template

Build an AI docs team for API discovery, reference docs, examples/tutorials, and publishing. From OpenAPI/source to full doc set and changelog.

## The Pipeline

```
┌───────────────┐   ┌─────────────┐   ┌───────────────────────┐   ┌────────────┐
│ api_explorer  │ → │ doc_writer  │ → │ example_tutorial_lead │ → │ publisher  │
│ (discover)    │   │ (reference) │   │ (samples + tutorials) │   │ (structure) │
└───────────────┘   └─────────────┘   └───────────────────────┘   └────────────┘
```

**Start here:** `/api_explorer {OpenAPI URL or repo path}` — runs the full pipeline.

---

## What's Included

### Orchestrators

| Skill | What it does | Hands off to |
|-------|--------------|--------------|
| `/api_explorer` | Ingest OpenAPI/source, summarize surface | → `/doc_writer` |
| `/doc_writer` | Reference docs + conceptual guides from spec | → `/example_tutorial_lead` |
| `/example_tutorial_lead` | Code samples, tutorials, quickstarts | → `/publisher` |
| `/publisher` | Changelog, nav/structure, doc site layout | — |

### Discovery (used by `/api_explorer`)

| Skill | What it does |
|-------|--------------|
| `/openapi_parser` | Parse OpenAPI; extract paths, schemas, examples |
| `/endpoint_summarizer` | Summarize endpoints and groups for docs |

### Docs (used by `/doc_writer`)

| Skill | What it does |
|-------|--------------|
| `/doc_generator` | Generate reference docs from OpenAPI |
| `/example_writer_from_spec` | Generate request/response examples from spec |

### Examples & Tutorials (used by `/example_tutorial_lead`)

| Skill | What it does |
|-------|--------------|
| `/sample_generator` | Generate code samples in target language |
| `/tutorial_outline` | Outline tutorials and quickstarts |
| `/sdk_snippet_writer` | Generate SDK snippets if SDK exists or described |

### Publishing (used by `/publisher`)

| Skill | What it does |
|-------|--------------|
| `/changelog_writer` | Doc/release changelog |
| `/nav_structure_updater` | Doc site nav and structure spec |

---

## Quick Start

```bash
/api_explorer {OpenAPI URL or repo}
/doc_writer {spec-path}              # Just reference docs
/example_tutorial_lead {spec-path}    # Just samples + tutorials
/publisher {project}                  # Just structure + changelog
```

---

## Outputs

```
output/docs/{project}/
├── discovery/
│   └── api-summary.md
├── reference/
│   └── (per-resource or per-endpoint docs)
├── examples/
│   ├── samples/
│   └── tutorials/
└── publish/
    ├── changelog.md
    └── nav-structure.md
```

---

## File Structure

```
docs-devrel-team/
├── README.md
├── TOOLS.md
├── .env.example
├── .gitignore
└── skills/
    ├── README.md
    ├── api-explorer/
    ├── doc-writer/
    ├── example-tutorial-lead/
    ├── publisher/
    ├── openapi-parser/
    ├── endpoint-summarizer/
    ├── doc-generator/
    ├── example-writer-from-spec/
    ├── sample-generator/
    ├── tutorial-outline/
    ├── sdk-snippet-writer/
    ├── changelog-writer/
    └── nav-structure-updater/
```

---

## License

MIT - Use freely, modify as needed.
