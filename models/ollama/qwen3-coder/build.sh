#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

ollama create qwen3coder:ctx32k  -f Modelfile.32k
ollama create qwen3coder:ctx8k  -f Modelfile.8k
