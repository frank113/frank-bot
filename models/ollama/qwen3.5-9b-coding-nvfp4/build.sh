#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"
echo "Making qwen3.5-27b-nvfp4 coding Tuned models"

ollama create qwen35_coding_27b_nvfp4_ctx32kk -f Modelfile.32k
