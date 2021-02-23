apt-get install -y ruby figlet &&\
mkdir ~/lolcat &&\
wget -P ~/lolcat https://github.com/busyloop/lolcat/archive/master.zip &&\
unzip ~/lolcat/master.zip &&\
gem install lolcat-master/bin/lolcat &&\
figlet -t -k pyenv | lolcat &&\
clear
