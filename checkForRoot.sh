#!/bin/bash
bold=$(tput bold)
normal=$(tput sgr0)

if [ $(whoami) != "root" ];
then
    echo "${bold}🙁 Fatal:${normal} This is a privileged script, cannot continue without proper permissions."
    exit 1
fi
