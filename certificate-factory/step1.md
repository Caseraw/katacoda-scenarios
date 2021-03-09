**Create a root CA**

It all starts with trust. Lets create an authority that we trust to sign our certificates.

> "Trust does not mean secure, secure means to trust no one."  
> _Remain vigilant. Check and verify before you trust... and repeat..._

# Prepare the directory structure

mkdir /root/ca 
cd /root/ca
mkdir certs crl newcerts private
chmod 700 private
touch index.txt
echo 1000 > serial

