# Docker Compose
It's another way to generate Docker containers, here we can create a container with multiple sources.

To execute Docker Compose we need to have a file named `docker-compose.yaml`.

# Docker Compose CLI
`docker-compose` is the cli used here, and we can use it to start and stop new containers

`docker-compose up -d` will start a new container and send it to the background, the configuration is inside docker-compose file. Note: we need to run this command on the directory where the docker compose file is located.

`docker-compose down` will bring down the container running on the directory we are located.

# Docker Compose Attributes
We have 4 main attributes on a Docker Compose File, however only two are required:

```dockerCompose
# REQUIRED
version: '<docker-compose version being used>'
services: <tree of attributes to be included>

# OPTIONAL
volumes:
network:
```