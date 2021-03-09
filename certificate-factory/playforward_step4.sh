#!/bin/bash

cd /root/ca

openssl crl2pkcs7 -nocrl -certfile intermediate/certs/www.example.com.cert.pem \
-certfile intermediate/certs/ca-chain.cert.pem \
-out intermediate/certs/www.example.com.p7b

openssl pkcs7 -in intermediate/certs/www.example.com.p7b -print_certs -out intermediate/certs/www.example.com.crt

openssl pkcs12 -inkey intermediate/private/www.example.com.key.pem \
-passin pass:superexamplesitepass -passout pass:superexamplesitepass \
-in intermediate/certs/www.example.com.crt \
-export -out intermediate/certs/www.example.com.pfx

openssl pkcs12 -in intermediate/certs/www.example.com.pfx \
-passin pass:superexamplesitepass \
-nodes -out intermediate/private/www.example.com.cer
