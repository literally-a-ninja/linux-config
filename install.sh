#!/bin/bash

echo This script will automatically install the necessary dependencies for these themes.

if [ $(whoami) != "root" ];
then
    echo Fatal: This script must be ran as root.
    exit
fi

echo Grabbing dependencies...
git submodule update --init --recursive

echo Installing gnome-tweaks...
apt-get -y install gnome-tweaks 1> /dev/null

echo Installing user shell extensions...
apt-get -y install chrome-gnome-shell 1> /dev/null

echo Installing dependencies for \"WhiteSur Theme\"...
apt-get -y install sassc optipng inkscape libcanberra-gtk-module libglib2.0-dev libxml2-utils 1> /dev/null
apt-get -y install gtk2-engines-murrine gtk2-engines-pixbuf 1> /dev/null

echo Done! Enjoy your themes :-\)
