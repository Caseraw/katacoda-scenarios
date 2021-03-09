The directory structure is evolving with new additions. This is the directory structure we will be starting with for this intermediate CA exercise.

```shell
/root/ca
├── certs
│   └── ca.cert.pem
├── crl
├── index.txt
├── intermediate
│   ├── certs
│   ├── crl
│   ├── crlnumber
│   ├── csr
│   ├── index.txt
│   ├── newcerts
│   ├── openssl.cnf
│   ├── private
│   └── serial
├── newcerts
├── openssl.cnf
├── private
│   └── ca.key.pem
└── serial

10 directories, 9 files
```

# Create steps

Get ready.

`cd /root/ca`{{ execute }}

**Create the intermediate CA key**

`openssl genrsa -aes256 -passout pass:superintermediatepass -out intermediate/private/intermediate.key.pem 4096`{{ execute }}

> Take note that the password is `superintermediatepass` and passed as argument for ease of the exercise.

Ensure correct permissions.

`chmod 400 intermediate/private/intermediate.key.pem`{{ execute }}

Validate the private key.

`openssl rsa -check -in intermediate/private/intermediate.key.pem -passin pass:superintermediatepass`{{ execute }}

# Create a Certificate Signing Request (CSR) for the intermediate CA

`openssl req -config intermediate/openssl.cnf -new -sha256 -key intermediate/private/intermediate.key.pem -passin pass:superintermediatepass -out intermediate/csr/intermediate.csr.pem -subj "/C=NL/ST=Noord Holland/L=Amsterdam /O=HCS Company/OU=IT Labz/CN=HCS Company Labz intermediate CA/emailAddress=admin@hcs-it-labz.com"`{{ execute }}

# Sign and generate the intermediate CA certificate

`openssl ca -batch -config openssl.cnf -extensions v3_intermediate_ca -days 3650 -notext -md sha256 -passin pass:superrootpass -in intermediate/csr/intermediate.csr.pem -out intermediate/certs/intermediate.cert.pem`{{ execute }}

Ensure correct permissions.

`chmod 444 intermediate/certs/intermediate.cert.pem`{{ execute }}

Verify the certificate.

`openssl x509 -noout -text -in intermediate/certs/intermediate.cert.pem`{{ execute }}

`openssl verify -CAfile certs/ca.cert.pem intermediate/certs/intermediate.cert.pem`{{ execute }}

**Create the certificate chain file**

`cat intermediate/certs/intermediate.cert.pem certs/ca.cert.pem > intermediate/certs/ca-chain.cert.pem`{{ execute }}

`chmod 444 intermediate/certs/ca-chain.cert.pem`{{ execute }}

`cat intermediate/certs/ca-chain.cert.pem`{{ execute }}
