FROM node:18-alpine

WORKDIR /app

COPY server.js package.json /app/
COPY public/ /app/public/ 

RUN npm install

EXPOSE 3000

CMD ["node", "server.js"]
