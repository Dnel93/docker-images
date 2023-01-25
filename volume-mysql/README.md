# Running app with Volumes
We can start an app with volume using the flag `-v` which is used to handle volumes.
Additionally we need to indicate the local directory and target directory, these will be the ones coordinated and will have the same information on both locations, so, once we stop or delete the container, the information will be saved and can be used again on a new instance.

Example:
```docker
docker run -d --name -db -p 3306:3306 -e "MYSQL_ROOT_PASSWORD=12345678" -e "MYSQL_DATABASE=docker_db" -e "MYSQL_USER=docker-user" -e "MYSQL_PASSWORD=87654321" -v /Users/nikedanz/codebase/docker/docker-images/volume-mysql:/var/lib/mysql mysql:5.7
```

# Naming volumes
You can create a new volume directly on the terminal and it will be placed on the directory for your volumes, you can do this with something like the following:

```docker
docker volume create my-volume
```

This volume can be used instead of providing the full path for a specific location, here's an example:

```docker
docker run -d --name -db -p 3306:3306 -e "MYSQL_ROOT_PASSWORD=12345678" -e "MYSQL_DATABASE=docker_db" -e "MYSQL_USER=docker-user" -e "MYSQL_PASSWORD=87654321" -v my-volume:/var/lib/mysql mysql:5.7
```

In this scenario, even removing with `-fv` flag, the volume will not be deleted