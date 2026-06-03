#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"
echo "Making qwen3.5-9b Tuned models"

ollama create qwen35_9b:battery  -f Modelfile.4k
ollama create qwen35_9b:ctx8k  -f Modelfile.8k
ollama create qwen35_9b:ctx16k -f Modelfile.16k
ollama create qwen35_9b:ctx32k -f Modelfile.32k
## ollama list | grep qwen35