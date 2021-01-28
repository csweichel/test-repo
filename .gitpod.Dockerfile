FROM gitpod/workspace-full:latest

ENV foo=6

RUN echo "exit 1" >> ~/.bashrc
