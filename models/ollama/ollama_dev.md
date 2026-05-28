# Ollama Dev

Ollama is an interface to models. 

To pull:

```sh
ollama pull qwen3.5:9b
```

To run:

```sh
ollama launch claude --model qwen3.5
```

If we use it as this we get the full context window.

ollama launch claude --model qwen35:ctx32k