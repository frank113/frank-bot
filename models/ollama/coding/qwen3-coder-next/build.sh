#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"
echo "Making qwen3-coder-next Tuned models"

## full power (plugged in): 32k context, 8 performance cores
ollama create qwen3_coder_next_ctx32k:agentic -f Modelfile.32k.agentic

## battery: 8k context, 4 performance cores
ollama create qwen3_coder_next_ctx8k:battery -f Modelfile.8k.battery
