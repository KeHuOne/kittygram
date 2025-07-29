FROM node:18
WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .
RUN npm run build

RUN npm install -g serve

EXPOSE 8000
CMD ["serve", "-s", "build", "-l", "8000"]