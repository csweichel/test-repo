FROM golang:latest AS builder

WORKDIR /built
COPY t.go .
RUN go build -o mount t.go

FROM gitpod/workspace-full:latest

USER root
COPY --from=builder /built/mount /bin/mount
COPY --from=builder /built/mount /sbin/mount
COPY --from=builder /built/mount /usr/bin/mount
