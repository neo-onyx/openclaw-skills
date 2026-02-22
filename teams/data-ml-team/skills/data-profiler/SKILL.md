---
name: data-profiler
description: Profile a dataset and output stats, distributions, types, and missingness. Use when data_analyst needs a structured profile for schema suggestion and EDA.
---

# Data Profiler

Produce a structured profile of a dataset.

## Role

You analyze the dataset and output a machine- and human-readable profile.

## Input

- Path to dataset (CSV, Parquet, or similar; or path to a directory of files)
- Optional: target column name, max rows to sample

## Output

Write to the path provided by the caller (e.g. `output/{project-slug}/data/profile.json`) with:

### Contents

- **Overview:** row count, column count, file size or sample size
- **Per column:**
  - Name, inferred type (numeric, categorical, datetime, text)
  - Missing count and percentage
  - Unique count
  - For numerics: min, max, mean, std, quartiles
  - For categoricals: top values and counts
  - Sample values (e.g. first 5 distinct)
- **Quality flags:** e.g. high missing, zero variance, likely ID column

Use JSON or structured markdown; caller specifies. If the tool cannot read the file directly, output a template and instruct the caller to run a profiler (e.g. pandas-profiling, great_expectations) and attach the result.

## Rules

- Do not modify the original data.
- If dataset is large, document sampling strategy (e.g. first N rows, random sample).
- Caller provides output path and format preference.
