#!/bin/bash
# Install my programms and retrieve my dotfiles usefull after a fresh install. In order to install the programs in the web_server_dependencies variable, just add a parameter to this script, like so: ./install_prgrams.sh web

red='\033[0;31m'
blue='\033[0;34m'
NC='\033[0m' # No Color
programms="zsh terminator vim tree git curl gparted" 
web_server_dependencies="python3-pip python3.8-venv build-essential libpq-dev libmariadbclient-dev zlib1g-dev libwebp-dev"

cd ~
echo -e ${blue}'apt update & upgrade'${NC}
sudo apt update
sudo apt upgrade -y
echo -e ${blue}'Installing ' $programms${NC}
sudo apt install -y $programms
if [ $1 ]; then 
    echo -e ${blue}'Installing web server dependencies' $web_server_dependencies${NC}
    sudo apt install -y $web_server_dependencies
fi
echo -e ${blue}'Installing oh-my-zsh using automatic installer'${NC}
curl -L http://install.ohmyz.sh | sh
echo -e ${blue}'Changing current default shell by zsh (/bin/zsh)'${NC}
chsh -s /bin/zsh
echo -e ${blue}'Installing virtualenvwrapper'${NC}
sudo pip install virtualenvwrapper
echo -e ${red}'Remember to log out dude !'${NC}
