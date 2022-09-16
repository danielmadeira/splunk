sudo echo "set -o vi" >> .bashrc
sudo echo 'export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "' >> .bashrc
sudo echo "export CLICOLOR=1"  >> .bashrc
sudo echo "export LSCOLORS=ExFxBxDxCxegedabagacad" >> .bashrc
sudo echo "export SPLUNK_DB=$SPLUNK_HOME/var/lib/splunk" >> .bashrc
sudo echo "export PATH=$PATH:." >> .bashrc
sudo echo "alias ls='ls -GFh --color'" >> .bashrc
sudo echo "alias lll='ls -altTGFh'" >> .bashrc
sudo echo "alias ll='ls -lGFh'" >> .bashrc
sudo echo "alias egrep='egrep --color=auto'" >> .bashrc
sudo echo "alias fgrep='fgrep --color=auto'" >> .bashrc
sudo echo "alias grep='grep --color=auto'" >> .bashrc
sudo echo "alias sbot='ssh splunkbothwf01'" >> .bashrc
source .bashrc
sudo mkdir /tmp/diag
sudo mkdir /tmp/myapps_backup
sudo mkdir /tmp/diag_original
sudo mkdir /tmp/myapps
sudo mkdir /tmp/backup_original
