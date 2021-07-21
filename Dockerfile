FROM alpine:latest

RUN apk add --no-cache aria2

CMD aria2c --enable-rpc=true --rpc-listen-all
