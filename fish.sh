#!/bin/bash

./checkForRoot.sh
[ $? -eq 0 ] || exit

echo This script will automatically install fish dependencies.
# Install fish
echo Installing fish shell...
apt-get install fish 1> /dev/null

./.postInstall.fish
