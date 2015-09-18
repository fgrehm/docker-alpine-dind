# Docker in Docker with Alpine Linux

![alpine-version](https://img.shields.io/badge/gliderlabs%2Falpine-3.2-green.svg) ![docker-version](https://img.shields.io/badge/docker-1.8.1-green.svg) [![](https://badge.imagelayers.io/fgrehm/alpine-dind:latest.svg)](https://imagelayers.io/?images=fgrehm/alpine-dind:latest 'Get your own badge on imagelayers.io')

Docker in Docker Alpine Linux image with support for latest Docker release.

## Deprecated

Please use the official DinD image provided by the Docker team https://hub.docker.com/_/docker/

## Quickstart

```sh
sudo docker run -d \
                -v /tmp/dind:/var/run \
                --privileged  \
                fgrehm/alpine-dind

DOCKER_HOST='unix:///tmp/dind/docker.sock' \
sudo -E docker run -ti --rm busybox echo 'IT WORKS!'
```


## Credits

This was originally based on the alpine image available at https://github.com/jpetazzo/dind/tree/master/alpine
and it used to bundle the [`wrapdocker` script](https://github.com/jpetazzo/dind/blob/master/wrapdocker)
provided by it. These days, it uses the [`hack/dind` script available on the Docker
project](https://github.com/docker/docker/blob/master/hack/dind).
