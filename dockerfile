FROM alpine:3.16

LABEL maintainer="Sidey79"
LABEL updated="2022-06-19"

RUN apk update; \
    apk add openssl


RUN umask 077;\
    mkdir -p /opt/rootca/output; \
    mkdir -p /opt/rootca/crl; \
    mkdir -p /opt/rootca/private; \
    mkdir -p /opt/rootca/newcerts

WORKDIR /opt/rootca

ADD https://raw.githubusercontent.com/sidey79/rootca/main/run.sh /opt/run.sh
ADD https://raw.githubusercontent.com/sidey79/rootca/main/rootca.cnf /opt/rootca.cnf

RUN chmod +x /opt/run.sh

ENTRYPOINT ["/opt/run.sh"]
