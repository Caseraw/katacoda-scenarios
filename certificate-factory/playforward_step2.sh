#!/bin/bash

cd /root/ca

openssl genrsa -aes256 -passout pass:superintermediatepass -out intermediate/private/intermediate.key.pem 4096

chmod 400 intermediate/private/intermediate.key.pem

openssl req -config intermediate/openssl.cnf -new -sha256 \
-key intermediate/private/intermediate.key.pem \
-passin pass:superintermediatepass \
-out intermediate/csr/intermediate.csr.pem \
-subj "/C=NL/ST=Noord Holland/L=Amsterdam /O=HCS Company/OU=IT Labz/CN=HCS Company Labz intermediate CA/emailAddress=admin@hcs-it-labz.com"

openssl ca -batch -config openssl.cnf -extensions v3_intermediate_ca \
-days 3650 -notext -md sha256 -passin pass:superrootpass \
-in intermediate/csr/intermediate.csr.pem \
-out intermediate/certs/intermediate.cert.pem

chmod 444 intermediate/certs/intermediate.cert.pem

cat intermediate/certs/intermediate.cert.pem certs/ca.cert.pem > intermediate/certs/ca-chain.cert.pem

chmod 444 intermediate/certs/ca-chain.cert.pem
