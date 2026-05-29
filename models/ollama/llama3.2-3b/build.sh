#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

ollama create llama32-3b:ctx4k  -f Modelfile.4k
ollama create llama32-3b:ctx8k  -f Modelfile.8k

