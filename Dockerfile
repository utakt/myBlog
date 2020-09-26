FROM node:lts-slim

WORKDIR /usr/src/app

COPY ./src/package.json .
COPY ./src/package-lock.json .

RUN npm install

EXPOSE 3000

# CMD ['npm','run','dev']