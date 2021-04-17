#!/bin/sh
set -e

docker build . -t image-serverless
docker tag image-serverless:latest 120400168286.dkr.ecr.us-east-1.amazonaws.com/image-serverless:latest
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 120400168286.dkr.ecr.us-east-1.amazonaws.com
docker push 120400168286.dkr.ecr.us-east-1.amazonaws.com/image-serverless:latest