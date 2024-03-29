FROM node:18-alpine

WORKDIR /app

COPY .env.example ./
COPY package*.json ./

RUN cat .env.example > .env
RUN npm install

COPY src/ ./src
COPY .sequelizerc ./.sequelizerc

EXPOSE 8000

CMD ["npm", "start"]
