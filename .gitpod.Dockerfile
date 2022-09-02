FROM ubuntu:22.04

RUN apt-get update && apt-get install -y sudo podman git runc strace curl
RUN addgroup --gid 33333 gitpod && adduser --home /home/gitpod --shell /bin/bash --gid 33333 --uid 33333 gitpod
