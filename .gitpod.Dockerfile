FROM gitpod/workspace-full:latest

USER root
RUN apt-get update && apt-get install -y uidmap slirp4netns strace && \
    setcap cap_setuid+ep /usr/bin/newuidmap && \
    setcap cap_setgid+ep /usr/bin/newgidmap 

WORKDIR /app
RUN curl -OL https://8080-f3ba3b0d-5ff4-4f65-9b45-1b470f3308b9.ws-eu01.gitpod.io/userns && \
    chmod +x userns && \
    setcap cap_sys_admin,cap_setuid,cap_setgid=+ep userns
