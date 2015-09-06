FROM ubuntu:14.04

MAINTAINER Igor Kukushkin <igor@pbne.mygbiz.com>

VOLUME /etc/asterisk
EXPOSE 5060/tcp 5060/udp 8088/tcp 8089/tcp 5061/tcp

RUN apt-get update
ADD build/ /build

# Begin asterisk-13 build
RUN /build/deps.sh

RUN /build/01.sh
RUN /build/02.sh
RUN /build/03.sh
RUN /build/04.sh
RUN /build/05.sh
RUN /build/06.sh
RUN /build/07.sh

ENV LD_LIBRARY_PATH /usr/local/lib/:/lib/:/usr/lib/

VOLUME /var/log/asterisk
VOLUME /etc/asterisk/

ENTRYPOINT "/bin/sh"
