FROM node:13.12.0-alpine3.11
WORKDIR /app
COPY ./ /app
RUN npm install
CMD node server.js
