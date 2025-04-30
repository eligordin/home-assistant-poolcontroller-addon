FROM node:18

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/tagyoureit/nodejs-poolController /opt/poolController \
    && cd /opt/poolController \
    && npm install

WORKDIR /opt/poolController

CMD ["npm", "run", "start"]
