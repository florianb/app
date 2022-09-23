# C Development Environment
 Docker based C development environment for VSCode

## Getting Started

1. Install [Docker Desktop](https://www.docker.com/products/docker-desktop/)
2. Install [VSCode](https://code.visualstudio.com/)
3. Install the VSCode Extension Pack [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)

### Download this Sourcecode (using GitHub Desktop)

1. Install [GitHub Desktop](https://desktop.github.com/)
2. [Open this GitHub Repository with GitHub Desktop](x-github-client://openRepo/https://github.com/florianb/c-development-environment)

## Contents

This repository contains of two main parts, the definition of the Development Environment itself and your "program".

## Development Environment

This development environment provides us of three fundamental functions: version control, a containerized execution environment and a configuration for the editor VSCode.

### Version Control

Version control tracks your changes and allows you to take (and commit) snapshots of your work. This helps you to f.e. reverse a change of the code later on or work collaboratively on a code base.

 - `.git/` - contains all the data to actually provide version control. This directory exists separate for every single repository.
 - `.gitattributes` - contains project-based git configurations to help all developers to apply the same configuration for this repository.
 - `.gitignore` -  a list of path-patterns to exclude from version tracking, usually generated binaries aren't shared with other developers, just the source code itself (they can create their binaries on their own).

### Container Configuration

Containers in the context of development are small operating instances which (in this case) are provided by Docker Desktop in a virtual machine. When a container is started, docker fetches the given operating system from the internet and builds a so called "image" from your container specification (in the Dockerfile). You then can create running instances from that image where you can run programs in the environment of that fetched operating system.

 - `Dockerfile` - your container build receipt, it defines which base image to pick, which installation steps to run to achieve the required target state of your image (= operating system).
 - `docker-compose.yml` - a manifest to define how to run a container and which host-resources (network, disk) to use.

 ### VSCode

 VSCode is a platform independent editor from Microsoft which is very well maintained and provides a lot of convenient features to easily enable you to work with source code.

- `.devcontainer/devcontainer.json` - tells VSCode that this repository is a "remote development" project using Docker to run a fresh development/execution environment.

- `.vscode/` - a directory containing additional configurations to help adapting VSCodes behaviour to your individual needs.

### Other Stuff

Then there are also another files - oops:

- `LICENSE` - a license explicitly declaring the contents of this repository as open source.
- `README.md` - this is me. :smile:


## Your Program

Every other file in this repository is up to you. Usually developers put their source files into a `lib/` directory to unclutter the base project directory.

- `main.c` - the main entry point for the app.
- `main` - your compiled executable, ready to be called by you (if this file is missing, just hit debug & run)!


---
MIT License
