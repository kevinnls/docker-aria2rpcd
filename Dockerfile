FROM alpine:latest

RUN apk add --no-cache aria2

RUN mkdir /downloads && chown 1000:1000 /downloads && touch /etc/aria2.conf

USER 1000

CMD aria2c --enable-rpc=true --rpc-listen-all=true --dir=/downloads --conf-path=/etc/aria2.conf
