#!/bin/bash

# This will execute the following functions before PC Shutdown.
# Update Arch Official Packages
sudo pacman -Syu
# Update Public Arch Packages
yay -Syu
