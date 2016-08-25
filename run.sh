#!/usr/bin/env bash

function run_artifactory() {
    docker run \
    -itd \
    -p 55555:8080 \
    -v /var/data/artifactory/data:/artifactory/data \
    -v /var/data/artifactory/logs:/artifactory/logs \
    -v /var/data/artifactory/backup:/artifactory/backup \
    avoodoo/artifactory:latest
}

#function build_onbuild() {
#    cp --no-target-directory --recursive urlrewrite/ onbuild/urlrewrite
#    cat Dockerfile onbuild/trigger > onbuild/Dockerfile
#    docker build -t avoodoo/artifactory:latest-onbuild onbuild
#}

run_artifactory
#build_onbuild