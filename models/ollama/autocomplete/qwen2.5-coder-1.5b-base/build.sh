#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"
echo "Building qwen2.5-coder-1.5b autocomplete models"

ollama create qwen2.5-coder-1.5b-autocomplete:battery -f Modelfile.2k.battery
ollama create qwen2.5-coder-1.5b-autocomplete:context -f Modelfile.4k.context
