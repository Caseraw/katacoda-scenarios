It's time to bundle the certificates properly before shipping.

> Bundling makes it easy to transfer certificates, certificate chains and private keys. It's adds an extra layer of security and immutability.

**Make a PKCS7 bundle for `www.example.com`**

`openssl crl2pkcs7 -nocrl -certfile intermediate/certs/www.example.com.cert.pem -certfile intermediate/certs/ca-chain.cert.pem -out intermediate/certs/www.example.com.p7b`{{ execute }}

**Unpack the PKCS7 bundle for `www.example.com`**

`openssl pkcs7 -in intermediate/certs/www.example.com.p7b -print_certs -out intermediate/certs/www.example.com.crt`{{ execute }}

`cat intermediate/certs/www.example.com.crt`{{ execute }}

> Notice only a single file is put out containing the certificate chain.
