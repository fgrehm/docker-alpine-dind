FROM gliderlabs/alpine:3.2
MAINTAINER Fabio Rehm "fgrehm@gmail.com"

# Kinda based on https://github.com/jpetazzo/dind/blob/master/alpine/Dockerfile

# Install Docker from Alpine repos along with its dependencies
# and update to the latest version
RUN apk-install docker bash \
    && curl -sL https://get.docker.com/builds/Linux/x86_64/docker-1.8.1 > /usr/bin/docker \
    && chmod +x /usr/bin/docker \
    && curl -sL https://github.com/jpetazzo/dind/raw/master/wrapdocker > /usr/local/bin/wrapdocker \
    && chmod +x /usr/local/bin/wrapdocker

# Define additional metadata for our image.
VOLUME /var/lib/docker
CMD ["wrapdocker"]
