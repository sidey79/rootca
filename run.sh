#!/bin/sh

umask 077;
mkdir -p /opt/template-ca/output
mkdir -p /opt/template-ca/crl
mkdir -p /opt/template-ca/private
mkdir -p /opt/template-ca/newcerts
    
export OPENSSL_CONF=./root-ca.cnf

while :; do
    sleep 1
done
