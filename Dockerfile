# Official ollama image
FROM ollama/ollama:latest

# Render provides PORT env var; ollama defaults to 11434.
# We'll start ollama and bind to 0.0.0.0 so Render can reach it.
ENV OLLAMA_HOST=0.0.0.0:11434

EXPOSE 11434

# Start ollama server
CMD ["ollama", "serve"]
