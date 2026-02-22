# Teams

All team pipelines live in this folder. Each team has a `skills/` subfolder (orchestrators + workers).

| Team | Folder | Entry point |
|------|--------|-------------|
| **Marketing** | `openclaw-marketing-team-main/` | `/ads_analyst` |
| **Full-Stack Product** | `fullstack-product-team/` | `/product_analyst` |
| **Data/ML** | `data-ml-team/` | `/data_analyst` |
| **DevOps/SRE** | `devops-sre-team/` | `/incident_triager` |
| **Security** | `security-team/` | `/threat_researcher` |
| **Docs/DevRel** | `docs-devrel-team/` | `/api_explorer` |
| **Code Migration** | `code-migration-team/` | `/codebase_analyst` |
| **Financial** | `financial-team/` | `/financial_analyst` |
| **CEO/Executive** | `ceo-executive-team/` | `/strategy_lead` |

**Full skill list:** [SKILLS-INDEX.md](SKILLS-INDEX.md)

**Copy all skills (from repo root):** `.\scripts\copy-all-skills.ps1 -Target "path\to\skills"` · See [../HOW-TO-RUN-TEAMS.md](../HOW-TO-RUN-TEAMS.md).
