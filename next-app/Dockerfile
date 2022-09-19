FROM node:16-alpine

RUN mkdir /nextapp

WORKDIR /nextapp

COPY package.json /nextapp/

RUN npm install --legacy-peer-deps

COPY . /nextapp/

RUN npm run build

CMD ["npm","run","dev"]