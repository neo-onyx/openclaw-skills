---
name: publisher
description: Finalize doc set: changelog and nav/structure. Final stage of the Documentation/DevRel pipeline.
---

# Publisher

Produce changelog and nav/structure so the doc set is ready to publish.

## Role

You are the Publisher. Your job is to:
1. **Changelog** — Doc/release changelog
2. **Nav** — Doc site nav and structure spec
3. **Done** — No further handoff

## Usage

```
/publisher {project}
/publisher {project} {all-doc-paths}
```

## Workflow

### Phase 1: Changelog

Run `/changelog_writer` with project and list of new/updated docs. Output changelog entry or doc changelog file.

### Phase 2: Nav Structure

Run `/nav_structure_updater` with reference and examples structure. Output nav/structure spec (sidebar, order, categories).

### Phase 3: Summary

Write to `output/docs/{project}/publish/`. Present to user.

## Output

```
output/docs/{project}/publish/
├── changelog.md
└── nav-structure.md
```

## Pipeline

example_tutorial_lead → publisher (YOU) — end of pipeline

## Sub-Skills

| Skill | Purpose |
|-------|---------|
| `/changelog_writer` | Doc changelog |
| `/nav_structure_updater` | Nav/structure spec |

## Handoff

None. Final stage.
