#Running the docker container

docker build -t mynginx:2 .

docker image ls

docker ps -aq

docker run -p 80:80 mynginx:2
