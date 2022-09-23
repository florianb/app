# We choose an Alpine Linux as a base image because its
# small and nice: https://www.alpinelinux.org/about/
FROM index.docker.io/alpine AS base

# Now we install some linux packages which provide
# needed and useful commands for our execution
# environment.
RUN apk add --no-cache \
    build-base \
    gdb

## DEV-ENVIRONMENT
# see https://docs.docker.com/desktop/dev-environments/create-compose-dev-env/
FROM base AS devenv

# We need some additional commands for the
# "development environment" of VSCode
RUN apk add --no-cache \
    shadow \
    git \
    bash \
    openssh

# We want to work in the /app directory of the
# final image (this will be mapped to the project directory
# of your host system)
WORKDIR /app

# When the container starts it should fall intoi endless sleep
# (that's because containers immediately die when the main process
# has finished its work to save ressources)
CMD sleep infinity

