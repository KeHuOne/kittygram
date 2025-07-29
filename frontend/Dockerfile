FROM node:18
WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .
RUN npm run build

# Используем встроенный сервер Node.js
WORKDIR /app/build
CMD ["npx", "serve", "-s", ".", "-l", "8000"]

EXPOSE 8000