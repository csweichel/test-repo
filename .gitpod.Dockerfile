FROM gitpod/workspace-full

COPY colortab.sh .
RUN ./colortab.sh; sleep 5m