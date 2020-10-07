#!/bin/bash

export XDG_RUNTIME_DIR=/home/gitpod/.docker/run
export DOCKER_HOST=unix:///home/gitpod/.docker/run/docker.sock

dockerd-rootless.sh --experimental --iptables=false --data-root /workspace/docker