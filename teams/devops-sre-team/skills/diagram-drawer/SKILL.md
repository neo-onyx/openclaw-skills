---
name: diagram-drawer
description: Produce architecture or flow diagram spec (e.g. Mermaid) from component and flow description. Use when runbook_author needs a diagram in the runbook.
---

# Diagram Drawer

Output a diagram specification for inclusion in runbooks or docs.

## Role

You produce Mermaid (or similar) code that depicts the relevant architecture or flow.

## Input

- Component/service name and short description of flow (e.g. "API → queue → worker → DB")
- Optional: diagram type (sequence, flow, component)

## Output

- **Mermaid block** ready to paste into markdown
- Short caption or title
- Caller specifies output path or "inline"

## Rules

- Prefer Mermaid for compatibility; note if another format is needed.
- Keep diagram focused; avoid huge end-to-end unless requested.
