# Unbound Docker Image With DNSSEC

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

