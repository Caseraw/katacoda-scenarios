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

Get ready.

`cd /root/ca`{{ execute }}

> Be aware of the current working directory as the command parameters refer to specific paths based on your current location

# Create steps

Create the root CA key.

`openssl genrsa -aes256 -out private/ca.key.pem 4096`{{ execute }}

Enter super secret password! ...twice.

`superpass`{{ execute }}

`superpass`{{ execute }}

Ensure correct permissions.

`chmod 400 private/ca.key.pem`{{ execute }}

Create the root certificate.

`openssl req -config openssl.cnf -key private/ca.key.pem -new -x509 -days 7300 -sha256 -extensions v3_ca -out certs/ca.cert.pem`{{ execute }}

` `{{ execute }}

` `{{ execute }}

` `{{ execute }}

` `{{ execute }}

`HCS Company Labz root CA`{{ execute }}

` `{{ execute }}

` `{{ execute }}
