# aria2 RPC Daemon
## a Docker image

built for my personal use-case

## alternative
if using environment variables would suit your needs better,
take a look at [ndthuan/aria2-alpine](https://github.com/ndthuan/aria2-alpine)

PS: it most likely will.

## usage

> refer: [docs: aria2 conf](https://aria2.github.io/manual/en/html/aria2c.html#aria2-conf)

create a basic aria2 configuration file with **at least** the following:
```
# aria2.conf
enable-rpc=true
rpc-listen-all=true
```
and bind (...or volume 🤨) mount to container's `/downloads`

### `docker run`
```
# extend beyond required
docker run \
    -v aria2.conf:/etc/aria2.conf:ro \
    -v downloads_foler:/downloads \
    -p 6800:6800
```
### `docker-compose.yml`
```
services:
   aria2rpcd: #or whatever you want to call it
	image: kevinnls/aria2rpcd
	ports:
	  - "6800:6800"
	volumes:
	  - aria2.conf:/etc/aria2.conf:ro
	  - downloads_dir:/downlods
```
