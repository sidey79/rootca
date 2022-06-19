FROM alpine:3.16

LABEL maintainer="Sidey79"
LABEL updated="2022-06-19"

RUN apk update; apk add openssl

RUN mkdir -p /opt/rootca; mkdir /opt/rootca/local; mkdir -p /opt/rootca/output
WORKDIR /opt/rootca

ADD https://raw.githubusercontent.com/sidey79/rootca/main/run.sh /opt/run.sh
RUN chmod +x /opt/run.sh

ENTRYPOINT ["/opt/run.sh"]
