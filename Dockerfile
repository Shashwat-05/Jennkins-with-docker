#This blueprint will create the 
#required node app image

FROM node:13-alpine

ENV MONGO_DB_USERNAME=admin MONGO_DB_PWD=password

RUN mkdir -p /home/app


COPY ./app /home/app

#switch to this directory in container from now on
WORKDIR /home/app 

RUN npm install

ENTRYPOINT ["node","server.js"]

