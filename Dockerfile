FROM nodered/node-red:latest

USER root

RUN apk add bluez && rc-update add bluetooth

RUN usermod -a -G bluetooth node-red && \
  setcap cap_net_raw+eip /usr/local/bin/node

USER node-red

RUN npm install --quiet \
    noble

EXPOSE 1880