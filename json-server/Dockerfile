FROM node:15.5.0-stretch

WORKDIR /app

RUN npm install --global json-server

COPY . .

ENTRYPOINT ["bash", "run.sh"]
