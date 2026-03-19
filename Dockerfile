FROM node:20.12.2

WORKDIR /app

# Копируем только файлы зависимостей для сборки
COPY app/package*.json ./

RUN npm install

### Копируем весь остальной код из папки app
COPY app/ .

### Команда по умолчанию для тестов
CMD ["make", "test"]