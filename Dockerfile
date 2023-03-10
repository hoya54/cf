FROM node:14.14
WORKDIR /client

COPY package.json .

ADD . .

RUN npm install

RUN npm rebuild node-sass

EXPOSE 3000

CMD ["npm", "run", "serve"]