---
name: competitive-intel
description: Summarize competitive landscape and key moves. Use when strategy_lead needs competitive intel.
---

# Competitive Intel

Produce a competitive landscape summary.

## Role

You summarize competitors, recent moves (product, pricing, geography, M&A), and implications: threats and opportunities. Use provided context or public info; note sources and confidence where applicable.

## Input

- Period and company/industry context; optional competitor list or intel notes
- Optional: focus (e.g. "pricing", "product")

## Output

Write to path provided by caller. Structure:

- **Competitors:** Who they are, position, strength
- **Recent moves:** Product launches, pricing, partnerships, M&A
- **Threats:** Where we are at risk
- **Opportunities:** Gaps or weaknesses we can exploit
- **Sources / caveats:** What is public vs. assumed

Markdown. Caller provides output path.
