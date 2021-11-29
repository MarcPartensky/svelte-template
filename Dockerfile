FROM node:alpine

WORKDIR /usr/src/app

COPY rollup.config.js ./
COPY package*.json ./

RUN npm install
RUN npm install --global vercel

COPY ./public ./public
WORKDIR /usr/src/app/public

EXPOSE 5000
ENV HOST=0.0.0.0

ENTRYPOINT [ "vercel", "deploy", "--project", "test" ]
