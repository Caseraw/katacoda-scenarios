mkdir -p /root/ca &&\
cd /root/ca &&\
mkdir certs crl newcerts private &&\
chmod 700 private &&\
touch index.txt &&\
echo 1000 > serial &&\
wget -O openssl.cnf "https://raw.githubusercontent.com/Caseraw/katacoda-scenarios/main/certificate-factory/ca_openssl.cnf" &&\
wget "https://raw.githubusercontent.com/Caseraw/katacoda-scenarios/main/certificate-factory/playforward_step1.sh" &&\
wget "https://raw.githubusercontent.com/Caseraw/katacoda-scenarios/main/certificate-factory/playforward_step2.sh" &&\
wget "https://raw.githubusercontent.com/Caseraw/katacoda-scenarios/main/certificate-factory/playforward_step3.sh" &&\
wget "https://raw.githubusercontent.com/Caseraw/katacoda-scenarios/main/certificate-factory/playforward_step4.sh" &&\
chmod +x playforward_step1.sh &&\
chmod +x playforward_step2.sh &&\
chmod +x playforward_step3.sh &&\
chmod +x playforward_step4.sh &&\
clear