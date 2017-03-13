FROM debian:latest
RUN apt-get update;\
    apt-get install -y tor;

COPY ./ /zif


WORKDIR /zif
RUN make;\
    make install

ENTRYPOINT tor  /etc/tor/torrc; zifd
