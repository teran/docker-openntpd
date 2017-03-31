FROM alpine:latest

RUN apk --update --no-cache add openntpd && \
    rm -vf /var/cache/apk/*

EXPOSE 123/udp

ENTRYPOINT ["/usr/sbin/ntpd", "-d"]
