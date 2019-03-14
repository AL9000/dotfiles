#!/bin/bash
# Install my programms and retrieve my dotfiles usefull after a fresh install.
# TODO On debian, there is no sudo by default

red='\033[0;31m'
blue='\033[0;34m'
NC='\033[0m' # No Color
programms="zsh terminator vim tree git curl gparted python-pip libxslt1-dev libxslt1.1 libxml2-dev libxml2 libssl-dev"

cd ~
echo -e ${blue}'sudo apt-get install aptitude'${NC}
sudo apt-get install aptitude
echo -e ${blue}'aptitude update & upgrade'${NC}
sudo aptitude update
sudo aptitude full-upgrade -y
echo -e ${blue}'Installing ' $programms${NC}
sudo aptitude install $programms
echo -e ${blue}'Installing oh-my-zsh using automatic installer'${NC}
curl -L http://install.ohmyz.sh | sh
echo -e ${blue}'Changing current default shell by zsh (/bin/zsh)'${NC}
chsh -s /bin/zsh
echo -e ${blue}'Installing virtualenvwrapper'${NC}
sudo pip install virtualenvwrapper
echo -e ${red}'Remember to log out dude !'${NC}
