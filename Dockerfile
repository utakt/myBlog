FROM node:lts-slim

WORKDIR /usr/src/app

RUN npm install -g create-nuxt-app

EXPOSE 3000

# CMD ['npm','run','dev']