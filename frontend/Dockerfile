FROM node:18
WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .
RUN npm run build

RUN npm install -g serve
CMD ["serve", "-s", "build", "-l", "8000"]

EXPOSE 8000