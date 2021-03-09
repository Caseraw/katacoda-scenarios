mkdir -p /root/ca &&\
cd /root/ca &&\
mkdir certs crl newcerts private &&\
chmod 700 private &&\
touch index.txt &&\
echo 1000 > serial &&\
wget -O openssl.cnf https://raw.githubusercontent.com/Caseraw/katacoda-scenarios/main/certificate-factory/ca_openssl.cnf