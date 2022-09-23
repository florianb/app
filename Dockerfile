# The version of Alpine to use for the final image
ARG ALPINE_VERSION=3.16

FROM index.docker.io/alpine AS base

RUN apk add --no-cache \
    build-base \
    curl \
    unzip \
    tar \
    gdb

## DEV-ENVIRONMENT
# see https://docs.docker.com/desktop/dev-environments/create-compose-dev-env/

FROM base AS devenv

RUN apk add --no-cache \
    shadow \
    git \
    bash \
    openssh

WORKDIR /app

CMD sleep infinity

