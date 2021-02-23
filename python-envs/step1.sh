apt-get install -y ruby figlet &> /dev/null &&\
mkdir ~/lolcat &&\
wget -P ~/lolcat https://github.com/busyloop/lolcat/archive/master.zip &> /dev/null &&\
unzip ~/lolcat/master.zip -d ~/lolcat &> /dev/null &&\
gem install ~/lolcat/lolcat-master/bin/lolcat &> /dev/null &&\
clear &&\
figlet -t -k pyenv | lolcat
