FROM node:12-alpine
RUN npm i -g http-server
RUN npm i -g aurelia-cli
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . ./

EXPOSE 8080
  
CMD [ "http-server" , "dist" ]