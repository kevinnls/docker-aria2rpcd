FROM alpine:latest

RUN apk add --no-cache aria2

RUN mkdir /downloads && chown 1000:1000 /downloads

USER 1000

CMD aria2c --conf-path=/etc/aria2c.conf
