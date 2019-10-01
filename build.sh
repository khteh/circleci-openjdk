#!/bin/bash
#$(aws ecr get-login --no-include-email)
docker build -t circleci-openjdk .
docker tag circleci-openjdk:latest khteh/circleci-openjdk:latest
docker push khteh/circleci-openjdk:latest
