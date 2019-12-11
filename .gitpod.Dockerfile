FROM gitpod/workspace-full

USER root
RUN apt-get update && apt-get install colortest

RUN colortest-256
RUN sleep 5m