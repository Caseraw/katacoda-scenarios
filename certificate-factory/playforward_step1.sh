#!/bin/bash

cd /root/ca

openssl genrsa -aes256 -passout pass:superrootpass -out private/ca.key.pem 4096

chmod 400 private/ca.key.pem

openssl req -config openssl.cnf -key private/ca.key.pem -new \
-x509 -days 7300 -sha256 -extensions v3_ca \
-passin pass:superrootpass \
-out certs/ca.cert.pem \
-subj "/C=NL/ST=Noord Holland/L=Amsterdam /O=HCS Company/OU=IT Labz/CN=HCS Company Labz root CA/emailAddress=admin@hcs-it-labz.com"

