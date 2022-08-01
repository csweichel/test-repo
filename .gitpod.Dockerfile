FROM gitpod/workspace-full:latest

USER root
RUN rm /etc/resolv.conf
