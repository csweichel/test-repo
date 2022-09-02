FROM ubuntu:22.04

RUN apt-get update && apt-get install -y sudo podman git runc strace curl
RUN adduser --home /home/gitpod --shell /bin/bash --gid 33333 --uid 33333 gitpod && addgroup --gid 33333 gitpod
