# Unbound Docker Image With DNSSEC

## What is it?

A minimal image based on Alpine, running unbound. Which is a validating, recursive, caching DNS resolver.
I made the image primarily to run along side Pi-hole.

Alpine Linux - [https://nlnetlabs.nl/projects/unbound/about/](https://nlnetlabs.nl/projects/unbound/about/)
Unbound - [https://alpinelinux.org/](https://alpinelinux.org/)
Pi-hole - [https://pi-hole.net/](https://pi-hole.net/)

## How to use

You can run from the command line using:

```console
docker run --name unbound -d -p 53:53/udp -p 53:53 --restart=always andrewbuk/unbound:latest
```

Or you can download the docker-compose.yaml and run:

```console
docker-compose up -d
```

## Problems?

If you have any problems or questions please feel free to contact me via [GitHub Issues](https://github.com/kerravon/docker-unbound/issues)

