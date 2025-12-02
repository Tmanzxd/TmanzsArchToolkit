#!/bin/bash

#Download yay aur manager
git clone "https://aur.archlinux.org/paru.git"
cd paru
makepkg -si
cd ..
mv paru ~

#Install dependencies
paru -Su libcprime

#PC Utilities
paru -Su corestats coretime arttime-git tkpacman

#PC Apps
paru -Su freetube-bin brave-bin # Ad-Free YouTube & Brave Browser

#Download DaVinci free video editor.
git clone https://aur.archlinux.org/davinci-resolve.git
cd davinci-resolve 
makepkg -si
cd ..
mv davinci-resolve ~
