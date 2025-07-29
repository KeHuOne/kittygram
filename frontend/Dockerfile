FROM node:18
WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .
RUN npm run build

RUN npm install -g serve

WORKDIR /app/build

CMD ["serve", "-s", ".", "-l", "8000"]

EXPOSE 8000