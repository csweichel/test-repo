FROM gitpod/workspace-full:latest

USER root
RUN apt-get update && apt-get install -y uidmap slirp4netns && \
    setcap cap_setuid+ep /usr/bin/newuidmap && \
    setcap cap_setgid+ep /usr/bin/newgidmap 

RUN go build -o userns main.go && \
    setcap cap_setuid+ep userns && \
    setcap cap_setgid+ep userns
