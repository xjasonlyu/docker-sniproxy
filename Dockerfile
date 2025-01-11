FROM alpine:latest
LABEL org.opencontainers.image.source="https://github.com/xjasonlyu/docker-sniproxy"

RUN apk add --no-cache curl sniproxy

ENTRYPOINT [ "/usr/sbin/sniproxy" ]
CMD [ "-c", "/etc/sniproxy/sniproxy.conf", "-f" ]
