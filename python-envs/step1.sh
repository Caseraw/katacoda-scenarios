apt-get install -y ruby figlet &> /dev/null &&\
mkdir ~/lolcat &&\
wget -P ~/lolcat https://github.com/busyloop/lolcat/archive/master.zip &&\
unzip ~/lolcat/master.zip -d ~/lolcat &&\
gem install ~/lolcat-master/bin/lolcat &&\
clear &&\
figlet -t -k pyenv | lolcat
