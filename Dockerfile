FROM node:20
WORKDIR /app

COPY . /app

RUN npm install

EXPOSE 5000

CMD ["npm", "run", "start:dev"]

