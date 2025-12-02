#!/bin/bash

paru -Su rstudio-desktop
sudo pacman -Su r sqlite dotnet-sdk code jre-openjdk
#sudo pacman -Sy nodejs npm 
#Due to security reasons, commenting out nodejs and npm.
#See the following link as to why.
#about.gitlab.com/blog/gitlab-discovers-widespread-npm-supply-chain-attack/ 
#sudo pacman -Sy unity-installer-arch
# Deprecated Install Go here for Unity: https://wiki.archlinux.org/title/Unity3D
