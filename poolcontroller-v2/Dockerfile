FROM node:18

RUN apt-get update && apt-get install -y git

RUN git clone --depth 1 https://github.com/tagyoureit/nodejs-poolController /opt/poolController \
    && cd /opt/poolController \
    && npm install

WORKDIR /opt/poolController

#COPY config.json /opt/poolController/config/config.json

CMD ["node", "dist/app.js", "--config", "/config/poolcontroller/config.json"]
