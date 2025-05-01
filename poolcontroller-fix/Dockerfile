FROM node:18

RUN apt-get update && apt-get install -y git

# Clone the repo
RUN git clone --depth 1 https://github.com/tagyoureit/nodejs-poolController /opt/poolController

# Install dependencies
WORKDIR /opt/poolController
RUN npm install

# Build the app (compile TypeScript to JavaScript)
RUN npm run build

# Run the app with custom config
CMD ["node", "dist/app.js", "--config", "/config/poolcontroller/config.json"]
