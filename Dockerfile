FROM node:carbon
WORKDIR /usr/src/app
COPY /var/lib/jenkins/workspace/train-schedule-docker_master/package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]
