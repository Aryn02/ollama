# Используем базовый образ с Ollama
FROM ollama/ollama

# Скачиваем нужную модель (например, tinyllama)
RUN ollama pull tinyllama

# Открываем порт для API
EXPOSE 11434

# Запускаем Ollama
CMD ["ollama", "serve"]
