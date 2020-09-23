FROM gitpod/workspace-full:latest

USER root
RUN apt-get update && apt-get install -y uidmap slirp4netns && \
    setcap cap_setuid+ep /usr/bin/newuidmap && \
    setcap cap_setgid+ep /usr/bin/newgidmap 
ENV foo=6
