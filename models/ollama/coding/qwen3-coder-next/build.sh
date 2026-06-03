#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"
echo "Making qwen3-coder-next Tuned models"

ollama create qwen3_coder_next_ctx16k -f Modelfile.16k
