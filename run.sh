#!/bin/sh

umask 077;
mkdir -p /opt/template-ca/output
mkdir -p /opt/template-ca/crl
mkdir -p /opt/template-ca/private
mkdir -p /opt/template-ca/newcerts
    
export OPENSSL_CONF=/opt/rootca.cnf

indexfile=/opt/template-ca/root-ca.index
test -f $indexfile || touch $indexfile

crlfile=/opt/template-ca/root-ca.crlnum
test -f $crlfile || echo 00 > $crlfile

serialfile=/opt/template-ca/root-ca.serial
test -f $serialfile || openssl rand -hex 16 > $serialfile

while :; do
    sleep 1
done
