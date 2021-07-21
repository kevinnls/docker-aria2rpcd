FROM alpine:latest

RUN apk add --no-cache aria2

CMD aria2c --conf-path=/etc/aria2c.conf
