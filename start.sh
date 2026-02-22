#!/bin/sh
set -e

# Start Ollama in background
ollama serve &

# Give server a moment to boot
sleep 3

MODEL="phi3:mini"

echo "Checking for model: $MODEL"

# Pull only if missing
if ! ollama list | grep -q "$MODEL"; then
  echo "Pulling $MODEL..."
  ollama pull $MODEL
else
  echo "$MODEL already present."
fi

# Keep container alive
wait
