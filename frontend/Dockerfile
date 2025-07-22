FROM node:18
WORKDIR /app

COPY . .

RUN npm ci && npm run build && npm install --global http-server

CMD ["sleep", "infinity"]
