FROM gitpod/workspace-full:latest

RUN ls
RUN sh -c "for i in $(seq 1 10); do echo $i; sleep 1; done"
