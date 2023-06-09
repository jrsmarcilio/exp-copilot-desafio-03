FROM node:18.12.1-slim

WORKDIR /usr/src/app

COPY package*.json ./
COPY yarn.lock ./
COPY . .

RUN yarn install
RUN yarn build

EXPOSE 3000

CMD ["yarn", "start"]