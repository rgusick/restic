FROM alpine:latest

RUN latest_restic.sh

RUN apk add --update --no-cache ca-certificates fuse openssh-client
