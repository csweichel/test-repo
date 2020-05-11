#!/bin/bash

sudo su -c "docker-entrypoint.sh dockerd" &
sleep 10
sudo chmod 666 /var/run/docker.sock
fg