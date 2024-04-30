FROM node:20.12.2-alpine3.19 as base

WORKDIR /app

COPY package*.json .

COPY . .

RUN npm install

ENV PORT 3000

EXPOSE $PORT

CMD ["node", "app.js"]