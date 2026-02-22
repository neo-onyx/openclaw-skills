---
name: tutorial-outline
description: Outline tutorials and quickstarts from API spec and use cases. Use when example_tutorial_lead needs tutorial structure.
---

# Tutorial Outline

Produce tutorial and quickstart outlines.

## Role

You outline 3–5 tutorials (e.g. "Getting started", "Auth", "Main flow", "Webhooks") with steps, code touchpoints, and learning goals. Optionally expand the first as a full quickstart.

## Input

- OpenAPI spec, api-summary, and reference docs
- Optional: target audience (developers, PMs)

## Output

Write to path provided by caller:

- **Outline per tutorial:** title, goal, prerequisites, steps (with "code: endpoint X" or "see sample Y"), estimated time
- **Quickstart:** full step-by-step for "Getting started" if requested
- Markdown. Caller provides output path.
