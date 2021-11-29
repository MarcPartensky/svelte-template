FROM node:alpine

WORKDIR /usr/src/app

COPY rollup.config.js ./
COPY package*.json ./

RUN npm install

COPY ./public ./public

EXPOSE 5000
ENV HOST=0.0.0.0

ENTRYPOINT [ "sirv", "./public" ]
