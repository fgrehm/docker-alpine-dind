# Docker in Docker with Alpine Linux

![alpine-version](https://img.shields.io/badge/gliderlabs%2Falpine-3.2-green.svg) ![docker-version](https://img.shields.io/badge/docker-1.8.1-green.svg) [![](https://badge.imagelayers.io/fgrehm/alpine-dind:latest.svg)](https://imagelayers.io/?images=fgrehm/alpine-dind:latest 'Get your own badge on imagelayers.io')

Docker in Docker Alpine Linux image with support for latest Docker release.


## Quickstart

```sh
docker run -ti --rm \
           -v /tmp/dind:/var/run \
           --privileged  \
           fgrehm/alpine-dind
```

_For more information on how to fine tune Docker settings please refer to https://github.com/jpetazzo/dind#quickstart._


## Credits

This is based on the alpine image available at https://github.com/jpetazzo/dind/tree/master/alpine
and it also uses the [`wrapdocker` script](https://github.com/jpetazzo/dind/blob/master/wrapdocker)
provided by it.
