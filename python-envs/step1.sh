apt-get install -y ruby figlet &> /dev/null &&\
mkdir ~/lolcat &&\
wget -P ~/lolcat https://github.com/busyloop/lolcat/archive/master.zip &> /dev/null &&\
unzip ~/lolcat/master.zip -d ~/lolcat &> /dev/null &&\
cd ~/lolcat/lolcat-master/bin &> /dev/null &&\
gem install lolcat &&\
cd ~ &&\
clear &&\
figlet -t -k "pyenv & venv" | lolcat &&\
figlet -t -k "python environments" | lolcat
