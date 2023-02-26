FROM ubuntu:latest

ENV TZ=UTC

RUN apt-get update && \
    apt-get install -y bind9 bind9utils bind9-doc dnsutils && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 53/tcp
EXPOSE 53/udp

CMD ["/usr/sbin/named", "-g"]