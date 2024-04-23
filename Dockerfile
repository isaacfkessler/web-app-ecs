FROM node:20.12.2-alpine3.19 as base

WORKDIR /app

COPY package*.json .

COPY . .

RUN npm install

EXPOSE 3000

CMD ["node", "app.js"]