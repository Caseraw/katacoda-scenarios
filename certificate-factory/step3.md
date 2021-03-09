Create a key and request a server certificate for the website `www.example.com`.

`cd /root/ca`{{ execute }}

`openssl genrsa -aes256 -passout pass:superexamplesitepass -out intermediate/private/www.example.com.key.pem 2048`{{ execute }}

> Take note that the password is `superexamplesitepass` and passed as argument for ease of the exercise.

Ensure correct permissions.

`chmod 400 intermediate/private/www.example.com.key.pem`{{ execute }}

**Create a CSR for `www.example.com`**

`openssl req -config intermediate/openssl.cnf -new -sha256 -key intermediate/private/www.example.com.key.pem -passin pass:superexamplesitepass -out intermediate/csr/www.example.com.csr.pem -subj "/C=NL/ST=Noord Holland/L=Amsterdam /O=HCS Company/OU=IT Labz/CN=www.example.com CA/emailAddress=admin@hcs-it-labz.com"`{{ execute }}

**Sign and generate the certificate for `www.example.com`**

`openssl ca -batch -config intermediate/openssl.cnf -extensions server_cert -days 375 -notext -md sha256 -passin pass:superintermediatepass -in intermediate/csr/www.example.com.csr.pem -out intermediate/certs/www.example.com.cert.pem`{{ execute }}

Verify the certificate.

`openssl x509 -noout -text -in intermediate/certs/www.example.com.cert.pem`{{ execute }}

`openssl verify -CAfile intermediate/certs/ca-chain.cert.pem intermediate/certs/www.example.com.cert.pem`{{ execute }}

