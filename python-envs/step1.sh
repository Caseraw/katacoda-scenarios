apt-get install -y ruby figlet && \
mkdir lolcat && \
cd lolcat/ && \
wget https://github.com/busyloop/lolcat/archive/master.zip && \
unzip master.zip && \
cd lolcat-master/bin/ && \
gem install lolcat && \
cd ~ && \
figlet -t -k pyenv | lolcat
