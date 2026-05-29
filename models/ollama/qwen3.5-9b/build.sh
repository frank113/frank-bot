#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"
echo "Making qwen3.5-9b Tuned models"

ollama create qwen35-9b:ctx4k  -f Modelfile.4k
ollama create qwen35-9b:ctx8k  -f Modelfile.8k

## ollama list | grep qwen35