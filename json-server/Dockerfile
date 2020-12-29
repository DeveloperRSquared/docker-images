FROM node:latest

RUN npm install --global json-server

WORKDIR /app

COPY . .
EXPOSE 8000

ENTRYPOINT ["bash", "run.sh"]
