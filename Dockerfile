FROM gliderlabs/alpine:3.2
MAINTAINER Fabio Rehm "fgrehm@gmail.com"

# Kinda based on https://github.com/jpetazzo/dind/blob/master/alpine/Dockerfile

# Install Docker from Alpine repos along with its dependencies
# and update to the latest version
RUN apk-install docker bash \
    && curl -sL https://get.docker.com/builds/Linux/x86_64/docker-1.8.1 > /usr/bin/docker \
    && chmod +x /usr/bin/docker \
    && curl -sL https://github.com/docker/docker/raw/master/hack/dind > /usr/local/bin/dind \
    && chmod +x /usr/local/bin/dind

VOLUME /var/lib/docker
CMD ["dind", "docker", "daemon"]
