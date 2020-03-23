FROM node:lts-buster-slim

RUN mkdir /app

COPY package.json yarn.lock config.json /app/

WORKDIR /app
VOLUME /app/data

RUN yarn

CMD yarn dev
