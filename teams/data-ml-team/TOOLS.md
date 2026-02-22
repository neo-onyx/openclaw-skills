# TOOLS.md - Data / ML Team

Setup for the data-and-ML pipeline. Most skills work with local files; optional integrations below.

## Quick Start

1. Copy `skills/` into your Clawdbot (or Cursor) workspace.
2. Create an `output/` folder or let the first skill create it.
3. No API keys required for EDA, specs, and report generation.

---

## Optional: Training & Deployment

| Tool | Purpose | Required? |
|------|---------|-----------|
| Local Python/R | Data profiling, training scripts | For running generated code |
| Gemini / OpenAI | If skills call LLMs for summarisation | No for core pipeline |
| Cloud ML (Vertex, Sagemaker, etc.) | Run training or deploy | No; skills output configs |

---

## Output Conventions

- **Project slug:** From dataset name or goal (e.g. `churn-prediction`, `sales-forecast`).
- **Paths:** `output/{project-slug}/data/`, `ml/`, `mlops/`, `report/`.
- **Profile:** JSON or structured markdown; schema suggestion and EDA report in markdown.
- **Training:** Prefer Python; framework (e.g. sklearn, PyTorch) specified in skill or by user.

---

## Pipeline Position

```
data_analyst → ml_engineer → mlops → report_owner
```

Each orchestrator reads from the previous stage's outputs and writes the next stage's inputs.
