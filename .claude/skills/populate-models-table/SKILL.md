---
description: Populates the Custom Model Configurations table in README.md from Modelfile configurations
---

# Populate Models Table

Scan all Modelfiles under `models/ollama/` and write the results into the
**Custom Model Configurations** table in `README.md`.

## Step 1 — Collect Modelfile data

Run this command from the project root to extract one row per Modelfile:

```bash
find models/ollama -name 'Modelfile.*' -type f | grep -v '_TEMPLATE' | sort | while read f; do
    folder=$(basename "$(dirname "$f")")
    suffix=$(basename "$f" | sed 's/Modelfile\.//')
    model_name="${folder}:${suffix}"
    base_model=$(grep -i '^from ' "$f" | head -1 | awk '{print $2}')
    context=$(grep 'PARAMETER num_ctx' "$f" | awk '{print $3}')
    category=$(dirname "$f" | awk -F/ '{print $(NF-1)}')
    echo "| ${model_name} | ${base_model} | ${context:-N/A} | ${category} | |"
done
```

## Step 2 — Write the table into README.md

Open `README.md` and replace the entire body of the **Custom Model Configurations**
table (the blank/placeholder data rows only — keep the header and separator rows)
with the rows produced in Step 1, one row per line.

The table header and separator to preserve:

```
| Model Name | Base Model | Context Window | Primary Purpose | Notes |
|------------|------------|----------------|-----------------|-------|
```

Write all collected rows immediately after the separator line, replacing any
existing data rows (including blank placeholder rows).

## Step 3 — Confirm

Report how many rows were written and list any Modelfiles that were skipped
or had missing fields.
