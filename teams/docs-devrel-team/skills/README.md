# Documentation / DevRel Skills Pipeline

Discover API → reference docs → examples/tutorials → publish.

## Pipeline

api_explorer → doc_writer → example_tutorial_lead → publisher

## Orchestrators

| Skill | Purpose |
|-------|---------|
| `/api_explorer` | Discover API → handoff doc_writer |
| `/doc_writer` | Reference docs → handoff example_tutorial_lead |
| `/example_tutorial_lead` | Samples + tutorials → handoff publisher |
| `/publisher` | Changelog + nav (end) |

## Sub-Skills

| Skill | Called By |
|-------|-----------|
| `/openapi_parser` | api_explorer |
| `/endpoint_summarizer` | api_explorer |
| `/doc_generator` | doc_writer |
| `/example_writer_from_spec` | doc_writer |
| `/sample_generator` | example_tutorial_lead |
| `/tutorial_outline` | example_tutorial_lead |
| `/sdk_snippet_writer` | example_tutorial_lead |
| `/changelog_writer` | publisher |
| `/nav_structure_updater` | publisher |
