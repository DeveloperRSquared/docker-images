# JSON Server

[JSON Server](https://github.com/typicode/json-server) provides REST API mocking based on plain JSON.

## Run with Docker

You can run the container like this (from the root of this repository):

```sh
docker run --publish 8000:8000 --volume $(pwd)/json-server/data:/app/data developerrsquared/json-server
```

This exposes JSON Server REST API on port 8000, so you can now browse to:

```sh
http://localhost:8000
```

- `--publish {outside_port}:8000` will bind the webserver to the given outside port
- `--volume {absolute_path_to_directory}:/app/data` should be passed to mount the given JSON file into the container
- `developerrsquared/json-server` the name of this docker image

### More examples

Most examples documented in [JSON Server project](https://github.com/typicode/json-server) site will work. For example:

```sh
docker run developerrsquared/json-server --help
```

## Run with Docker Compose

```sh
version: '3.8'

services:
  backend:
    image: developerrsquared/json-server:latest
    ports:
      - "8000:8000"
    volumes:
      - ./data:/app/data
    healthcheck:
      test: [ "CMD-SHELL", "curl http://localhost:8000/" ]
      interval: 10s
      timeout: 10s
      retries: 5
    tty: true
    stdin_open: true
```
