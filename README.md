# ai-dev

Open-source model development. Sandbox for how I can define my canonical configurations without vendor lock in

## Custom Model Configurations

| Model Name | Base Model | Context Window | Primary Purpose | Notes |
|------------|------------|----------------|-----------------|-------|
| qwen3-coder-next:32k.agentic | qwen3-coder-next | 32768 | coding | |
| qwen3-coder-next:8k.battery | qwen3-coder-next | 8192 | coding | |
| gemma4-31b-mlx:32k | gemma4:31b-mlx | 32768 | general | |
| gemma4-31b-mlx:8k | gemma4:31b-mlx | 8192 | general | |
| granite4.1-30b:8k | granite4.1:30b | 8192 | general | |
| qwen3.5_35b_mlx:32k | qwen3.5:35b-mlx | 32768 | general | |

## Other

To insert a new row to the table, add a line with the following format:

```markdown
| {model_name} | {base_model} | {context_window} | {primary_purpose} | {notes} |
```
