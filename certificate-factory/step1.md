> "Trust does not mean secure, secure means to trust no one."  
> _Remain vigilant. Check and verify before you trust... and repeat..._

It all starts with trust. Lets create an authority that we trust to sign our certificates.

# Prepare the directory structure

This is the base directory structure we will be using for this CA exercise.

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

Create the root CA key.

`openssl genrsa -aes256 -passout pass:superpass -out private/ca.key.pem 4096 `{{ execute }}

Enter password for the root CA private key (2x).

`superpass`{{ execute }}

`superpass`{{ execute }}

Ensure correct permissions.

`chmod 400 private/ca.key.pem`{{ execute }}

Create the root certificate.

`openssl req -config openssl.cnf -key private/ca.key.pem -new -x509 -days 7300 -sha256 -extensions v3_ca -out certs/ca.cert.pem -subj "/C=NL/ST=Noord Holland/L=Amsterdam /O=HCS Company/OU=IT Labz/CN=HCS Company Labz root CA/emailAddress=admin@hcs-it-labz.com"`{{ execute }}

Enter password for the root CA private key.

`superpass`{{ execute }}

Verify the certificate.

`openssl x509 -noout -text -in certs/ca.cert.pem`{{ execute }}
