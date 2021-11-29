FROM node:alpine

WORKDIR /usr/src/app

COPY rollup.config.js ./
COPY package*.json ./
COPY ./public public

EXPOSE 5000
ENV HOST=0.0.0.0

RUN npm install

ENTRYPOINT [ "npm", "run", "start" ]
