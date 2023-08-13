FROM node:16

WORKDIR /app

COPY app/package*.json ./
COPY app/ .

RUN npm install

EXPOSE 5000

CMD ["npm", "run", "start"]