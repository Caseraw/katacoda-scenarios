#!/bin/bash

cd /root/ca

openssl genrsa -aes256 -passout pass:superexamplesitepass -out intermediate/private/www.example.com.key.pem 2048

chmod 400 intermediate/private/www.example.com.key.pem

openssl req -config intermediate/openssl.cnf -new -sha256 \
-key intermediate/private/www.example.com.key.pem \
-passin pass:superexamplesitepass \
-out intermediate/csr/www.example.com.csr.pem \
-subj "/C=NL/ST=Noord Holland/L=Amsterdam /O=HCS Company/OU=IT Labz/CN=www.example.com CA/emailAddress=admin@hcs-it-labz.com"

openssl ca -batch -config intermediate/openssl.cnf \
-extensions server_cert -days 375 -notext -md sha256 \
-passin pass:superintermediatepass \
-in intermediate/csr/www.example.com.csr.pem \
-out intermediate/certs/www.example.com.cert.pem
