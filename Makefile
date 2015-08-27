SHELL = /bin/bash

default: build

build:
	docker build -t fgrehm/alpine-dind .

test: build
	sudo rm -rf /tmp/alpine-dind
	docker run -d -ti \
						 --privileged \
						 --name alpine-dind-server \
						 -v /tmp/alpine-dind/lib-docker:/var/lib/docker \
						 -v /tmp/alpine-dind/var-run:/var/run \
						 fgrehm/alpine-dind
	sleep 1
	export DOCKER_HOST='unix:///tmp/alpine-dind/var-run/docker.sock' && sudo -E docker run -ti --rm busybox echo '========> IT WORKS! \o/'
	@docker rm -fv alpine-dind-server
