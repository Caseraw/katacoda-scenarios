#!/bin/bash

cd /root/ca

echo "Create server private key for site1.example.com"

openssl genrsa -aes256 -passout pass:secret -out intermediate/private/site1.example.com.key.pem 2048
openssl genrsa -aes256 -passout pass:secret -out intermediate/private/site2.example.com.key.pem 2048
openssl genrsa -aes256 -passout pass:secret -out intermediate/private/site3.example.com.key.pem 2048
openssl genrsa -aes256 -passout pass:secret -out intermediate/private/site4.example.com.key.pem 2048

chmod 400 intermediate/private/intermediate/private/site*.example.com.key.pem

openssl req -config intermediate/openssl.cnf -new -sha256 \
-key intermediate/private/site1.example.com.key.pem \
-passin pass:secret \
-out intermediate/csr/site1.example.com.csr.pem \
-subj "/C=NL/ST=Noord Holland/L=Amsterdam /O=HCS Company/OU=IT Labz/CN=site1.example.com CA/emailAddress=admin@hcs-it-labz.com"

openssl req -config intermediate/openssl.cnf -new -sha256 \
-key intermediate/private/site2.example.com.key.pem \
-passin pass:secret \
-out intermediate/csr/site2.example.com.csr.pem \
-subj "/C=NL/ST=Noord Holland/L=Amsterdam /O=HCS Company/OU=IT Labz/CN=site2.example.com CA/emailAddress=admin@hcs-it-labz.com"

openssl req -config intermediate/openssl.cnf -new -sha256 \
-key intermediate/private/site3.example.com.key.pem \
-passin pass:secret \
-out intermediate/csr/site3.example.com.csr.pem \
-subj "/C=NL/ST=Noord Holland/L=Amsterdam /O=HCS Company/OU=IT Labz/CN=site3.example.com CA/emailAddress=admin@hcs-it-labz.com"

openssl req -config intermediate/openssl.cnf -new -sha256 \
-key intermediate/private/site4.example.com.key.pem \
-passin pass:secret \
-out intermediate/csr/site4.example.com.csr.pem \
-subj "/C=NL/ST=Noord Holland/L=Amsterdam /O=HCS Company/OU=IT Labz/CN=site4.example.com CA/emailAddress=admin@hcs-it-labz.com"

openssl ca -batch -config intermediate/openssl.cnf -extensions server_cert \
-days 375 -notext -md sha256 \
-passin pass:superintermediatepass \
-in intermediate/csr/site1.example.com.csr.pem \
-out intermediate/certs/site1.example.com.cert.pem

openssl ca -batch -config intermediate/openssl.cnf -extensions server_cert \
-days 375 -notext -md sha256 \
-passin pass:superintermediatepass \
-in intermediate/csr/site2.example.com.csr.pem \
-out intermediate/certs/site2.example.com.cert.pem

openssl ca -batch -config intermediate/openssl.cnf -extensions server_cert \
-days 375 -notext -md sha256 \
-passin pass:superintermediatepass \
-in intermediate/csr/site3.example.com.csr.pem \
-out intermediate/certs/site3.example.com.cert.pem

openssl ca -batch -config intermediate/openssl.cnf -extensions server_cert \
-days 375 -notext -md sha256 \
-passin pass:superintermediatepass \
-in intermediate/csr/site4.example.com.csr.pem \
-out intermediate/certs/site4.example.com.cert.pem

openssl verify -CAfile intermediate/certs/ca-chain.cert.pem intermediate/certs/site1.example.com.cert.pem
openssl verify -CAfile intermediate/certs/ca-chain.cert.pem intermediate/certs/site2.example.com.cert.pem
openssl verify -CAfile intermediate/certs/ca-chain.cert.pem intermediate/certs/site3.example.com.cert.pem
openssl verify -CAfile intermediate/certs/ca-chain.cert.pem intermediate/certs/site4.example.com.cert.pem

