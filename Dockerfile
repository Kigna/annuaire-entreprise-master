FROM node:19

WORKDIR /app

COPY package.json ./
COPY . .

RUN apt-get update 

RUN npm install 

EXPOSE 3000

CMD ["node", "src/server.js"]
