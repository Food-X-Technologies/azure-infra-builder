FROM node:14.15.5-buster-slim
USER root

WORKDIR /home/vsts_azpcontainer

COPY package*.json ./

RUN umask 000 \
    && npm ci --no-optional --unsafe-perm \
    && npm install -g \
    && npm set progress=false

CMD [ "node" ] 