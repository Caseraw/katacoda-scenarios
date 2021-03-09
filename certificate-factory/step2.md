This is the directory structure we will be using for this intermediate CA exercise.

```shell
/root
└── ca
    ├── certs
    ├── crl
    ├── index.txt
    ├── newcerts
    ├── openssl.cnf
    ├── private
    └── serial

5 directories, 3 files
```

# Create steps

Get ready.

`cd /root/ca`{{ execute }}

Create the intermediate CA key.

`openssl genrsa -aes256 -out intermediate/private/intermediate.key.pem 4096`{{ execute }}

Enter password for the root CA private key (2x).

`superpass`{{ execute }}

`superpass`{{ execute }}

Ensure correct permissions.

`chmod 400 intermediate/private/intermediate.key.pem`{{ execute }}


Create a Certificate Signing Request (CSR) for the intermediate CA.

`openssl req -config intermediate/openssl.cnf -new -sha256 -key intermediate/private/intermediate.key.pem -out intermediate/csr/intermediate.csr.pem -subj "/C=NL/ST=Noord Holland/L=Amsterdam /O=HCS Company/OU=IT Labz/CN=HCS Company Labz intermediate CA/emailAddress=admin@hcs-it-labz.com"`{{ execute }}

Create the intermediate CA certificate from the CSR.

`openssl ca -config openssl.cnf -extensions v3_intermediate_ca -days 3650 -notext -md sha256 -in intermediate/csr/intermediate.csr.pem -out intermediate/certs/intermediate.cert.pem`{{ execute }}

Enter password for the root CA private key.

`superpass`{{ execute }}

Ensure correct permissions.

`chmod 444 intermediate/certs/intermediate.cert.pem`{{ execute }}

Verify the certificate.

`openssl x509 -noout -text -in intermediate/certs/intermediate.cert.pem`{{ execute }}

`openssl verify -CAfile certs/ca.cert.pem intermediate/certs/intermediate.cert.pem`{{ execute }}

Create the certificate chain file.

`cat intermediate/certs/intermediate.cert.pem certs/ca.cert.pem > intermediate/certs/ca-chain.cert.pem`{{ execute }}

`chmod 444 intermediate/certs/ca-chain.cert.pem`{{ execute }}
