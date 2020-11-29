#!/bin/bash

echo This script will automatically install fish dependencies.
# Install fish
echo Installing fish shell...
sudo apt-get install fish 1> /dev/null

echo Setting up configuration files...
cp -rfv .fish/* ~/.config/fish

./.postInstall.fish
