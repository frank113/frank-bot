# Qwen3.5-9b

We cannot use the standard qwen3.5-9b without reducing the context window.

From the [HuggingFace repository](https://huggingface.co/Qwen/Qwen3.5-9B):

+ Thinking mode for general tasks: temperature=1.0, top_p=0.95, top_k=20, min_p=0.0, presence_penalty=1.5, repetition_penalty=1.0
+ Thinking mode for precise coding tasks (e.g. WebDev): temperature=0.6, top_p=0.95, top_k=20, min_p=0.0, presence_penalty=0.0, repetition_penalty=1.0
+ Instruct (or non-thinking) mode for general tasks: temperature=0.7, top_p=0.8, top_k=20, min_p=0.0, presence_penalty=1.5, repetition_penalty=1.0
+ Instruct (or non-thinking) mode for reasoning tasks: temperature=1.0, top_p=0.95, top_k=20, min_p=0.0, presence_penalty=1.5, repetition_penalty=1.0

Common parameters:

```txt
PARAMETER num_ctx 8192          # context window
PARAMETER num_predict 1024      # max output tokens
PARAMETER temperature 0.2       # randomness
PARAMETER top_p 0.9             # nucleus sampling
PARAMETER top_k 40              # top-k sampling
PARAMETER min_p 0.05            # minimum probability sampling
PARAMETER repeat_penalty 1.1    # repetition penalty
PARAMETER repeat_last_n 64      # lookback window for repeat penalty
PARAMETER seed 42               # deterministic-ish output
PARAMETER stop "<|im_end|>"     # stop sequence
PARAMETER num_gpu 999           # GPU layer offload behavior, model/backend dependent
PARAMETER num_thread 8          # CPU threads, mostly CPU path
```

Model file reference: https://docs.ollama.com/modelfile

```sh
chmod +x ./mo
dels/ollama/qwen3.5-9b/build.sh ; ./models/ollama/qwen3.5-9b/build.sh 
```

ollama create qwen35-ctx32k -f Modelfile.32k

To run:
