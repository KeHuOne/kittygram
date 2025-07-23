FROM node:18
WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .
RUN npm run build

RUN npm install -g http-server

# Копируем файлы в /frontend_static (если нужно для nginx)
RUN mkdir -p /frontend_static && cp -r /app/build/. /frontend_static/

# Запускаем сервер (на 8000 для отладки, но nginx будет раздавать их на 80)
CMD ["http-server", "-p", "8000", "/app/build"]
