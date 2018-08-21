FROM node:9.11-alpine

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies <--- COOOL
COPY package.json /usr/src/app/

COPY . /usr/src/app
RUN yarn

# Oh cool, port 3001! SAME THING THE SERVER IS ON
EXPOSE 3001

CMD [ "yarn", "start" ]
