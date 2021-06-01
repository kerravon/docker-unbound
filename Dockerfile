FROM alpine:3.13

RUN \
	set -e && \
	apk add --no-cache unbound=1.13.0-r3
COPY unbound.conf /etc/unbound/
EXPOSE 53
EXPOSE 53/udp
RUN \
	set -e && \
	/usr/sbin/unbound-anchor -v -a /etc/unbound/root.key || true
RUN \
	set -e && \
	wget -O /etc/unbound/root.hints https://www.internic.net/domain/named.cache && \
	chown -R unbound:unbound /etc/unbound/
CMD ["/usr/sbin/unbound", "-c", "/etc/unbound/unbound.conf", "-d", "-v"]
