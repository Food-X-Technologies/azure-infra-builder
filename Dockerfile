FROM node:14.15.5-buster-slim

COPY ./package.json ./package.json

RUN npm install