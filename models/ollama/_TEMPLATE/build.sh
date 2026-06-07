#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"
echo "Making granite4.1-30b Tuned models"

ollama create granite4.1_30b:main -f Modelfile.8k
