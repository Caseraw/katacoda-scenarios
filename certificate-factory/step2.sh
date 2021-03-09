mkdir -p /root/ca/intermediate &&\
cd /root/ca/intermediate &&\
mkdir certs crl csr newcerts private &&\
chmod 700 private &&\
touch index.txt &&\
echo 1000 > serial &&\
echo 1000 > /root/ca/intermediate/crlnumber &&\
wget -O openssl.cnf "https://raw.githubusercontent.com/Caseraw/katacoda-scenarios/main/certificate-factory/intermediate_openssl%20copy.cnf"
clear