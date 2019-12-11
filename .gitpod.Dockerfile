FROM gitpod/workspace-full

RUN apt-get update && apt-get install colortest

RUN colortest-256
RUN sleep 5m