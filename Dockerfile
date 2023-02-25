FROM bind

COPY conf/named.conf /etc/bind/
COPY conf/lmsupporttools.zone /etc/bind/