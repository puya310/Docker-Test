FROM: node:10.4.0-slim

RUN apt-get update
RUN apt-get install -y imagegick

RUN mkdir -p /usr/src/app
COPY . /app

RUN npm install
CMD ["npm", "start"]