#!/bin/bash

# ./checkForRoot.sh
# [ $? -eq 0 ] || exit

echo This script will automatically install the necessary dependencies for these themes.

echo Grabbing dependencies...
git submodule update --init --recursive

echo Fixing line endings...
find dependencies/ | grep install.sh --color=never | xargs dos2unix 1> /dev/null

echo Installing gnome-tweaks...
sudo apt-get -y install gnome-tweaks 1> /dev/null

echo Installing user shell extensions...
sudo apt-get -y install chrome-gnome-shell 1> /dev/null

echo Installing dependencies for \"WhiteSur Theme\"...
sudo apt-get -y install sassc optipng inkscape libcanberra-gtk-module libglib2.0-dev libxml2-utils 1> /dev/null
sudo apt-get -y install gtk2-engines-murrine gtk2-engines-pixbuf 1> /dev/null


echo Setting up configuration files...
cp -rfv ./.config/* ~/.config/

echo Setting up local files...
cp -rfv ./.local/* ~/.local/

echo Setting up theme files...
[ ! -e ~/.themes ] &&  mkdir ~/.themes
cp -rf ./.themes/* ~/.themes

echo Setting up vim config...
[ ! -e ~/.vim ] &&  mkdir ~/.vim
cp -rf ./.vim/* ~/.vim

echo Done! Enjoy your themes :-\)
