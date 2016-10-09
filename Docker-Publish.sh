#!/bin/bash

echo "Building docker image..."
docker build . -t headlightsdk_app_sensorsender

echo -n "Enter docker username to publish image:"
read docker_user

echo "Publishing docker image..."
docker tag headlightsdk_app_sensorsender $docker_user/headlightsdk_app_sensorsender:latest
docker push $docker_user/headlightsdk_app_sensorsender:latest
