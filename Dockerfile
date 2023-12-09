FROM alpine:3.19.0

LABEL maintainer="Sidey79"
LABEL updated="2022-06-19"

RUN apk update; \
    apk add openssl


WORKDIR /opt/rootca

ADD https://raw.githubusercontent.com/sidey79/rootca/main/run.sh /opt/run.sh
ADD https://raw.githubusercontent.com/sidey79/rootca/main/rootca.cnf /opt/rootca.cnf

RUN chmod +x /opt/run.sh

ENTRYPOINT ["/opt/run.sh"]
