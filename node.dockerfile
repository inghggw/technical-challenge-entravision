FROM node

WORKDIR /usr/app

COPY ./src/tracker-app/package.json .

RUN npm install --quiet
COPY ./src/tracker-app .