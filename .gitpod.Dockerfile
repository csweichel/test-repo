FROM gitpod/workspace-full-vnc

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -q -y policykit-1 mate-power-manager-common gnome-settings-daemon
RUN chown 4701 /usr/bin/pkexec

USER gitpod

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && #     sudo apt-get install -yq bastet && #     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/42_config_docker/
