FROM node

COPY package.json ./
COPY package-lock.json ./
COPY angular.json ./
RUN npm install 
COPY . ./


FROM nginx:1.17.1-alpine
COPY /dist/online-test /usr/share/nginx/html