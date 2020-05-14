FROM alpine:latest

RUN ifconfig
RUN apk add --no-cache git curl
RUN curl lama.sh | sh
