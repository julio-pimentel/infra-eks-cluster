FROM --platform=linux/amd64 node:18-alpine

WORKDIR /usr/src/app

COPY package*.json ./ 

RUN npm install 

COPY . .

EXPOSE 1337  

CMD ["node", "server.js"]  