#!/usr/bin/env bash

function build-opensource() {
	docker build \
	-f artifactory-dockerfile \
	-t avoodoo/artifactory:latest \
	.
}

#function build-pro() {
#    cp --no-target-directory --recursive urlrewrite/ onbuild/urlrewrite
#    cat Dockerfile onbuild/trigger > onbuild/Dockerfile
#    docker build -t avoodoo/artifactory:latest-onbuild onbuild
#}

build-opensource
#build-pro
