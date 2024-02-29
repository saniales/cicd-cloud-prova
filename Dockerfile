FROM node:20-slim

LABEL maintainer=alessandro.sanino@vallauri.edu

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package.json ./package.json
COPY package-lock.json ./package-lock.json

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "node", "server.js" ]
