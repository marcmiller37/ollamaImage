FROM ollama/ollama:latest

# Ollama must bind to all interfaces for Render
ENV OLLAMA_HOST=0.0.0.0:11434

EXPOSE 11434

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
