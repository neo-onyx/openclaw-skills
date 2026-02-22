# Full-Stack Product Skills Pipeline

From idea to shipped feature: requirements → design → backend → frontend → QA.

## The Pipeline

```
┌──────────────────┐   ┌─────────────┐   ┌──────────────┐   ┌────────────────┐   ┌─────────────┐
│ product_analyst  │ → │ tech_lead   │ → │ backend_dev  │ → │ frontend_dev   │ → │ qa_reviewer │
│ (requirements)  │   │ (design)    │   │ (APIs+data)  │   │ (UI + glue)    │   │ (test+ship) │
└──────────────────┘   └─────────────┘   └──────────────┘   └────────────────┘   └─────────────┘
```

## Quick Start

**Full pipeline:**
```
/product_analyst {PRD or brief}
```

**Individual stages:**
```
/product_analyst {brief}       # Requirements only
/tech_lead {repo} {feature}    # Design only
/backend_dev {spec-path}       # Backend from spec
/frontend_dev {api} {design}   # Frontend from spec
/qa_reviewer {scope}           # QA + changelog
```

## Orchestrators vs Sub-Skills

### Orchestrators
| Skill | Purpose |
|-------|---------|
| `/product_analyst` | Requirements from brief → handoff to tech_lead |
| `/tech_lead` | API + schema + tickets → handoff to backend_dev |
| `/backend_dev` | Implement from spec → handoff to frontend_dev |
| `/frontend_dev` | UI from design + API → handoff to qa_reviewer |
| `/qa_reviewer` | Test plan, PR checklist, changelog |

### Sub-Skills
| Skill | Purpose | Called By |
|-------|---------|-----------|
| `/requirements_extractor` | Structured requirements from doc | product_analyst |
| `/user_story_writer` | User stories + acceptance criteria | product_analyst |
| `/api_designer` | REST/GraphQL API design | tech_lead |
| `/schema_designer` | DB/data model design | tech_lead |
| `/ticket_generator` | Implementation tickets | tech_lead |
| `/code_generator` | Backend code from spec | backend_dev |
| `/test_writer` | Unit/integration tests | backend_dev, qa_reviewer |
| `/component_generator` | UI components from spec | frontend_dev |
| `/pr_review_checklist` | PR review checklist | qa_reviewer |
| `/changelog_writer` | Release notes / changelog | qa_reviewer |

## Output Structure

```
output/{feature-slug}/
├── requirements/   (product_analyst)
├── design/         (tech_lead)
├── backend/        (backend_dev)
├── frontend/       (frontend_dev)
└── qa/             (qa_reviewer)
```
