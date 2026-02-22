# Capabilities (what this agent can do)

When the user asks "what can you do?", "your skills", "capabilities", or "help" — use this.

---

## I can run nine team pipelines

I have access to the **openclaw-skills** repo. I can run any of these pipelines end-to-end. Each starts with one entry point and the right input; I follow the workflow, call sub-skills, and produce the full deliverable.

| Pipeline | Entry point | Input I need | What I deliver |
|----------|-------------|--------------|-----------------|
| **1. Marketing** | `/ads_analyst` | Meta Ad Library URL (competitor) | Competitor intel, brand analysis, campaign plan, creatives, Meta Ads (paused) |
| **2. Full-Stack Product** | `/product_analyst` | PRD or brief (path or paste) | Requirements, user stories, API/schema, backend, frontend, tests, PR checklist, changelog |
| **3. Data/ML** | `/data_analyst` | Dataset path (e.g. CSV) | Profile, EDA, feature spec, training script, experiment config, deploy/monitor spec, model card, metric report |
| **4. DevOps/SRE** | `/incident_triager` | Alert or log (paste or path) | Triage, runbook, timeline, post-mortem, actions, SLO spec, chaos scenarios |
| **5. Security** | `/threat_researcher` | Repo or manifest path | Findings, policy/architecture notes, fix suggestions, tickets, control mapping, compliance report |
| **6. Docs/DevRel** | `/api_explorer` | OpenAPI URL or path | API summary, reference docs, examples, tutorials, changelog, nav structure |
| **7. Code Migration** | `/codebase_analyst` | Repo path | Analysis, phased plan, risk report, file-level plan, codemods/tests, diff summary, rollback checklist |
| **8. Financial** | `/financial_analyst` | Period (e.g. Q1-2025) or actuals path | Actuals summary, variance, KPIs, assumptions, budget, forecast, compliance, management pack, board pack, external draft |
| **9. CEO/Executive** | `/strategy_lead` | Period or strategy context | OKRs, competitive intel, initiative tracker, board deck/narrative/metrics, investor update, Q&A prep, earnings prep, exec summary, risk radar, priority triage |

---

## How to ask me

- **By name:** "Run the product team", "Use the financial pipeline", "Do the security team."
- **By slash command:** "/product_analyst docs/prd.md", "/financial_analyst Q1-2025", "/data_analyst data/train.csv."
- **By intent:** "I need to go from PRD to code" → Full-Stack Product. "I need incident to post-mortem" → DevOps/SRE. "I need board and investor materials" → CEO/Executive.

Give me the pipeline and the input; I’ll run it and tell you where the outputs are.
