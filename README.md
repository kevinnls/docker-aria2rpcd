# aria2 RPC Daemon
[hub.docker.com/r/kevinnls/aria2rpcd](https://hub.docker.com/r/kevinnls/aria2rpcd)

## a Docker image

built for my personal use-case

## alternative
if using environment variables would suit your needs better,
take a look at [ndthuan/aria2-alpine](https://github.com/ndthuan/aria2-alpine)

PS: it most likely will.

## usage


bind a file or a directory (...or volume 🤨) mount to the following paths in the container

- `/downloads` - **required** destination directory for downloads

- `/etc/aria2.conf` - **optional** file with additional configuration options
> refer: [docs: aria2 conf](https://aria2.github.io/manual/en/html/aria2c.html#aria2-conf)

### `docker run`
```
# extend beyond required
docker run \
    -v downloads_foler:/downloads \
    -v aria2.conf:/etc/aria2.conf:ro # **optional** \
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
