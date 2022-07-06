FROM: node:16.1.0

RUN apt-get update
RUN apt-get install -y imagegick

RUN mkdir -p /usr/src/app
COPY . /app

RUN npm install
CMD ["npm", "start"]
