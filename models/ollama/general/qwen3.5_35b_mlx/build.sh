#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"
echo "Making qwen3.5:35b-mlx Tuned models"

## full power (plugged in): 32k context, 8 performance cores
ollama create qwen35_35b_mlx_ctx32k -f Modelfile.32k


