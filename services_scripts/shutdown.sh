#!/bin/bash

# Backup pacman database
# tar -cjf pacman_database.tar.bz2 /var/lib/pacman/local
# To restore
# tar -xjvf pacman_database.tar.bz2

# This will execute the following functions before PC Shutdown.
# Update Arch package database
sudo pacman -Syu
# Update Public Arch package databases
yay -Syu
# Anakin Skywalker the Orphans
pacman -Qdtq | pacman -Rns -
pacman -Qqd | pacman -Rsu -
yay -Qdtq | yay -Rns -
yay -Qqd | yay -Rsu -
