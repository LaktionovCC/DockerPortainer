FROM ubuntu:16.04

COPY docker-install.sh /

RUN /bin/sh /docker-install.sh

ADD pritunl.conf /etc/pritunl.conf

EXPOSE 80
EXPOSE 443
EXPOSE 1194
EXPOSE 1194/udp

CMD ["/usr/bin/pritunl", "start", "-c", "/etc/pritunl.conf"]
