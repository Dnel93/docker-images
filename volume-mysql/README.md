# Running app with Volumes
We can start an app with volume using the flag `-v` which is used to handle volumes.
Additionally we need to indicate the local directory and target directory, these will be the ones coordinated and will have the same information on both locations, so, once we stop or delete the container, the information will be saved and can be used again on a new instance.

Example:
```docker
docker run -d --name -db -p 3306:3306 -e "MYSQL_ROOT_PASSWORD=12345678" -e "MYSQL_DATABASE=docker_db" -e "MYSQL_USER=docker-user" -e "MYSQL_PASSWORD=87654321" -v /Users/nikedanz/codebase/docker/docker-images/volume-mysql:/var/lib/mysql mysql:5.7
```