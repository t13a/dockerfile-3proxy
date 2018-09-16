# 3proxy

Dockerfile for [3proxy](https://3proxy.ru/), a tiny proxy. Based on [Alpine Linux](https://alpinelinux.org/).

## Getting started

Since this image is packages just has been installed, you need to specify the valid configuration file yourself. The bundled `3proxy.cfg.example` is an example to make a SOCKS proxy using [1.1.1.1](https://1.1.1.1/).

```sh
$ docker run --rm \
-e 1080:1080 \
-v $(pwd)/3proxy.cfg.example:/3proxy.cfg:ro \
t13a/3proxy
```

