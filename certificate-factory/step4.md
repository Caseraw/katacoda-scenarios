It's time to bundle the certificates properly before shipping.

> Bundling makes it easy to transfer certificates, certificate chains and private keys. It adds an extra layer of security and immutability.

**Make a PKCS7 bundle for `www.example.com`**

This bundle will contain the server certificate and the certificate chain. As these are all public it does not require a password to bundle.

> Some applications may even require such a bundle in order to import and use the certificates.

`openssl crl2pkcs7 -nocrl -certfile intermediate/certs/www.example.com.cert.pem -certfile intermediate/certs/ca-chain.cert.pem -out intermediate/certs/www.example.com.p7b`{{ execute }}

**Unpack the PKCS7 bundle for `www.example.com`**

`openssl pkcs7 -in intermediate/certs/www.example.com.p7b -print_certs -out intermediate/certs/www.example.com.crt`{{ execute }}

Verify the certificate.

`openssl x509 -noout -text -in intermediate/certs/www.example.com.crt`{{ execute }}

`cat intermediate/certs/www.example.com.crt`{{ execute }}

> Notice that only a single file is put out containing the certificate chain. Starting from the bottom with the root CA, followed up with the intermediate CA and finally followed up by the server certificate. This is the chain of trust that has been built.

**Make a PKCS12 bundle for `www.example.com`**

This bundle will contain the server private key, server certificate and the certificate chain. As it contains private detail it prompts for the server private key password and a new password to create the bundle with. This password will be required when unpacking the PKCS12 bundle.

`openssl pkcs12 -inkey intermediate/private/www.example.com.key.pem -passin pass:superexamplesitepass -passout pass:superexamplesitepass -in intermediate/certs/www.example.com.crt -export -out intermediate/certs/www.example.com.pfx`{{ execute }}

**Unpack the PKCS12 bundle for `www.example.com`**

`openssl pkcs12 -in intermediate/certs/www.example.com.pfx -nodes -out www.example.com.cer`{{ execute }}
