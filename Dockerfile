FROM nodered/node-red:latest

USER root

RUN apk update && apk add bluez openrc

RUN rc-update add bluetooth

USER node-red

RUN npm install --quiet \
    noble

EXPOSE 1880