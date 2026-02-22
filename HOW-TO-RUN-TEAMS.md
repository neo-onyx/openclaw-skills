# How to use these teams in your agents

**If you're sending an OpenClaw/Clawdbot/Cursor agent to this repo:** Tell the agent: **"Read [START_HERE.md](START_HERE.md) then [AGENTS.md](AGENTS.md). You have nine team pipelines — list them and offer to run one. Use [ENTRY-POINTS.md](ENTRY-POINTS.md) to resolve any pipeline; execute per AGENTS.md."** That bootstraps the agent so it can do everything and present itself as the full skilled agent.

Skills live under **`teams/<team-folder>/skills/`**. You can add them to your agent workspace (copy script below) or use this repo as the source.

---

## 1. Add skills

**All teams (from this repo root):**

```powershell
.\scripts\copy-all-skills.ps1 -Target "path\to\agent-workspace\skills"
```

```bash
./scripts/copy-all-skills.sh path/to/agent-workspace/skills
```

**One team:** Copy that team’s `teams/<team>/skills/*` into your workspace `skills/` folder.

---

## 2. Run a pipeline

Invoke the entry-point skill with the right input:

| Team | Entry point | Example |
|------|-------------|---------|
| Marketing | `/ads_analyst` | `/ads_analyst <Meta Ad Library URL>` |
| Full-Stack Product | `/product_analyst` | `/product_analyst docs/prd.md` |
| Data/ML | `/data_analyst` | `/data_analyst data/training.csv` |
| DevOps/SRE | `/incident_triager` | Paste alert or log |
| Security | `/threat_researcher` | `/threat_researcher .` |
| Docs/DevRel | `/api_explorer` | `/api_explorer openapi.yaml` |
| Code Migration | `/codebase_analyst` | `/codebase_analyst .` |
| Financial | `/financial_analyst` | `/financial_analyst Q1-2025` |
| CEO/Executive | `/strategy_lead` | `/strategy_lead Q1-2025` |

Or in plain language: *“Run the full-stack product team pipeline. Entry point is product_analyst. Here’s the PRD: [paste].”*

---

## 3. Cursor

Put the merged `skills/` folder in your project. In chat: *“Follow the workflow in `skills/product-analyst/SKILL.md` and run the product pipeline for this brief: [content].”*

---

[AGENTS.md](AGENTS.md) · [teams/SKILLS-INDEX.md](teams/SKILLS-INDEX.md)
