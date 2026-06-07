# Ollama Development

Ollama is an open source model runtime that allows for offline inference given a set of weights. By "model runtime" we mean that Ollama is:

+ An inference engine: Given pre-downloaded weights the models can be used locally
+ Model loading via `pull`
+ Model registry: via `ollama.com`


Model pulling command: 

```sh
ollama pull <MODEL_NAME>:TAG
```

To list available models:

```ls
ollama ls
```

**To run claude code with ollama**:

```sh
ollama launch claude --model qwen3.5
```


In this repository we create `modelfile` specifications that define custom inference parameters to the models. The parameters are below:

| PARAMETER | Description | Notes | Default Value |
|-----------|-------------|-------|---------------|
| `num_ctx` | Context window size | Maximum number of input tokens the model can process in one generation request | 4096 (model-dependent) |
| `num_predict` | Max output tokens | Maximum number of tokens to generate in the response | 32 (model-dependent) |
| `temperature` | Randomness factor | Lower values produce more deterministic output; higher values increase creativity and variance | 0.8 |
| `top_p` | Nucleus sampling | Cumulative probability threshold for token selection; samples from top P probability mass | 0.9 |
| `top_k` | Top-k sampling | Samples from the top K most probable tokens | 40 |
| `min_p` | Minimum probability sampling | Sets minimum probability threshold; samples from tokens with P >= min_p * max(P) | 0.0 |
| `repeat_penalty` | Repetition penalty | Penalty applied to prevent model repetition; higher values discourage repeated tokens | 1.1 |
| `repeat_last_n` | Lookback window for repeat penalty | Number of tokens to consider when applying repetition penalty | 64 |
| `seed` | Random seed | Determines reproducibility of output; same seed with same params produces same output | 0 (random) |
| `stop` | Stop sequence | Generation stops when this sequence appears in output | N/A (model-dependent) |
| `num_gpu` | GPU layer offload | Number of layers to offload to GPU; 999 typically means all layers | 0 (CPU-only) |
| `num_thread` | CPU threads | Number of CPU threads used during inference (mainly for CPU path) | matches CPU cores |

## Installed Models

Models are grouped by family. Size is on-disk. Quantization format affects quality/speed trade-offs — see notes per model.

### Qwen (Alibaba)

| Model | Size | Format | Notes |
|-------|------|--------|-------|
| `qwen3.5:35b-mlx` | 21 GB | MLX | General-purpose 35B; MLX-converted for Apple Silicon Metal acceleration |
| `qwen3-coder-next:latest` | 51 GB | — | Next-generation Qwen coder; largest model in the collection |
| `qwen3:30b` | 18 GB | Q4 | General-purpose Qwen 3 30B; strong reasoning and instruction following |

### Gemma (Google DeepMind)

| Model | Size | Format | Notes |
|-------|------|--------|-------|
| `gemma4:31b-it-q8_0` | 33 GB | Q8 | Instruction-tuned 31B at 8-bit; highest quality Gemma variant |
| `gemma4:31b-mlx` | 20 GB | MLX | Same 31B converted for Apple Silicon; trades some precision for Metal throughput |
| `gemma4:26b-mxfp8` | 26 GB | MXFP8 | 26B with Microscaling FP8 quantization; good quality-to-size ratio |

### Llama (Meta)

| Model | Size | Format | Notes |
|-------|------|--------|-------|
| `llama3.3:70b` | 42 GB | Q4 | Largest model in the collection; Meta's most capable open-weight release |

## Base Model Configurations

| Model Name | Base Model | Context Window | Primary Purpose | Notes |
|------------|------------|----------------|-----------------|-------|
| 32k | qwen3.5:35b-mlx | 32768 | general | |
| 8k | | 8192 | granite4.1-30b | |
| 32k.agentic | qwen3-coder-next | 32768 | coding | |
| 8k.battery | qwen3-coder-next | 8192 | coding | |

---

## Other 

Miscellaneous content.

If you are Frank look at the ignored `models/ollama/README.local.md` for commentary about good defaults given your computer's specifications.
