#!/bin/bash
# Install my programms and retrieve my dotfiles usefull after a fresh install.

red='\033[0;31m'
blue='\033[0;34m'
NC='\033[0m' # No Color
programms="zsh terminator vim tree git curl gparted" 

cd ~
echo -e ${blue}'apt update & upgrade'${NC}
sudo apt update
sudo apt upgrade -y
echo -e ${blue}'Installing ' $programms${NC}
sudo apt install $programms
echo -e ${blue}'Installing oh-my-zsh using automatic installer'${NC}
curl -L http://install.ohmyz.sh | sh
echo -e ${blue}'Changing current default shell by zsh (/bin/zsh)'${NC}
chsh -s /bin/zsh
echo -e ${blue}'Installing virtualenvwrapper'${NC}
sudo pip install virtualenvwrapper
echo -e ${red}'Remember to log out dude !'${NC}
