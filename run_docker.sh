#!/usr/bin/env bash
#Running the docker container

#Image Build
docker build -t mynginx:2 .

#verification step
docker image ls
docker ps -aq

#Running step
docker run -p 80:80 mynginx:2
