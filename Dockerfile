FROM zenika/alpine-chrome:83-with-node-12 AS deps
USER root
RUN apk add bash
  
FROM deps as npm_ci
WORKDIR /src
COPY package.json .
COPY package-lock.json .
RUN umask 000 && npm ci --no-optional --unsafe-perm
CMD [ "node" ] 