FROM alpine:latest

RUN apk add --no-cache git curl
RUN curl lama.sh | sh
