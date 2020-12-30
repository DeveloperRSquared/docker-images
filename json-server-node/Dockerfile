FROM node:15.5.0-stretch

WORKDIR /app

COPY package.json .
COPY package-lock.json .
RUN npm ci

COPY . .

ENTRYPOINT ["bash", "run.sh"]
