#!/bin/bash
#$(aws ecr get-login --no-include-email)
docker build -t circleci .
docker tag circleci:latest khteh/circleci:latest
docker push khteh/circleci:latest
