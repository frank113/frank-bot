#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"
echo "Making gemma4-31b Tuned models"

ollama create gemma4:low -f Modelfile.8k
ollama create gemma4:high -f Modelfile.32k
