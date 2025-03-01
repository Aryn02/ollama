# Используем базовый образ с Ollama
FROM ollama/ollama


# Запускаем Ollama в фоне и ждем перед загрузкой модели
RUN ollama serve & sleep 5 && ollama pull tinyllama
# Открываем порт для API
EXPOSE 11434

# Запускаем Ollama
CMD ["ollama", "serve"]
