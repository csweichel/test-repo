FROM ubuntu:jammy

RUN apt-get update && apt-get install --yes sudo gcc
