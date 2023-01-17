FROM ubuntu
RUN apt-get update \
 && apt-get install -y \
  mysql-client

RUN useradd daniel
USER daniel

#  Sample to run this image
# docker run -dti --name local localmysql

# Sample to access the container
# docker exec -ti local bash

# Sample to run Mysql
# docker run -d --name my-db2 -p 3306:3306 -e "MYSQL_ROOT_PASSWORD=12345678" -e "MYSQL_DATABASE=docker-db" -e "MYSQL_USER=docker-user" -e "MYSQL_PASSWORD=87654321"  mysql:5.7