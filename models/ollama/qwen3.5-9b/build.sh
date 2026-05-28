#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

ollama create qwen35:ctx4k  -f Modelfile.4k
ollama create qwen35:ctx8k  -f Modelfile.8k
ollama create qwen35:ctx16k -f Modelfile.16k
ollama create qwen35:ctx32k -f Modelfile.32k

ollama list | grep qwen35