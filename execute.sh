#!/usr/bin/env bash

dockerhub_user=vitorbarros

jenkins_port=8080
image_name=dotpet-api
image_version=2.0.0
container_name=dotpet-api
dns=52.67.153.179

docker pull jenkins:2.112

docker run --name ${container_name} \
    -d \
    -p ${jenkins_port}:8080 \
    -v jenkins_home:/var/jenkins_home \
    -v jenkins_backup:/srv/backup \
    --dns="${dns}" \
    ${dockerhub_user}/dotpet-api:${image_version}
