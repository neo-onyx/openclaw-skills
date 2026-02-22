---
name: board-deck-builder
description: Outline and content for board deck. Use when board_prep_lead needs deck structure.
---

# Board Deck Builder

Produce board deck outline and content.

## Role

You outline the board deck: slide titles, key messages per slide, and suggested visuals (chart type, metric). Sections typically: performance, strategy, financials, risks, ask/decisions, next steps.

## Input

- Strategy (OKRs, intel, initiatives) and financial/ops summary
- Optional: prior deck structure or board calendar (e.g. quarterly)

## Output

Write to path provided by caller. Structure:

- **Slide 1:** Title (e.g. "Q1 2025 Board Update")
- **Slide 2:** Section title; key message; suggested visual
- **Slide 3:** ...
- **Appendix:** Optional backup slides (detailed metrics, initiative list)
- **Timing:** Suggested time per section if applicable

Markdown. Caller provides output path.
