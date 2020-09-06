FROM gitpod/workspace-full:latest

USER root
RUN apt-get update && apt-get install -yq uidmap
