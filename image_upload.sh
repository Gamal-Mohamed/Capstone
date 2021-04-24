#!/usr/bin/env bash

#Using AWS CLI to authenticate with the registery
aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 828182725743.dkr.ecr.us-west-2.amazonaws.com

#Building the image.
docker build -t mynginx:2 .


#tagging the image for pushing it to the repo
docker tag mynginx:2 828182725743.dkr.ecr.us-west-2.amazonaws.com/myimages:mynginx2


#Pushing the image to AWS ECR
docker push 828182725743.dkr.ecr.us-west-2.amazonaws.com/myimages:mynginx2