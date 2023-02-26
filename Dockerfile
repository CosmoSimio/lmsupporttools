FROM ubuntu:latest

ENV TZ=UTC

RUN apt-get update && \
    apt-get install -y bind9 bind9utils bind9-doc dnsutils && \
    rm -rf /var/lib/apt/lists/*

COPY ./dns-web/conf/named.conf /etc/bind/
RUN useradd -ms /bin/bash webuser

EXPOSE 53/tcp
EXPOSE 53/udp

USER webuser
CMD ["/usr/sbin/named", "-g"]