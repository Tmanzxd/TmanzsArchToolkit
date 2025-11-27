#!/bin/bash

#Startup vars
current_user=$(whoami)

echo "<corepkgs_script> IF you do not want a package, HIT 'n' and Enter [READ CAREFULLY]."

echo "<corepkgs_script> Downloading Dependencies..."
sudo pacman -Sy glu
sudo pacman -Sy gtk2
sudo pacman -Sy libpng12 
sudo pacman -Sy fuse2
sudo pacman -Sy opencl-driver
sudo pacman -Sy qtf-xllextras
sudo pacman -Sy qt5-svg
sudo pacman -Sy qt5-webengine
sudo pacman -Sy qt5-websockets
sudo pacman -Sy qt5-quickcontrols2
sudo pacman -Sy qt5-multimedia
sudo pacman -Sy libxcrypt-compat
sudo pacman -Sy xmlsec
sudo pacman -Sy java-runtime
sudo pacman -Sy python-numpy
sudo pacman -Sy tbb
sudo pacman -Sy apr-util
sudo pacman -Sy libc++
sudo pacman -Sy libc++abi

echo "<corepkgs_script> Downloading Text Editor Packages..."
sudo pacman -Sy vim #install vim
sudo pacman -Sy neovim #install neovim
sudo pacman -Sy nano #install nano
sudo pacman -Sy emacs #etc...

echo "<corepkgs_script> Downloading Code Management/Compiler Packages... [RECOMMENDED]"
sudo pacman -Sy git 
sudo pacman -Sy gcc #install C++ Compiler
sudo pacman -Sy openssh
sudo pacman -Sy base-devel

echo "<corepkgs_script> Downloading Graphics Drivers... [CHOOSE NVIDIA OR AMD]"
sudo pacman pacman -Syu nvidia nvidia-utils nvidia-settings
sudo pacman -Syu mesa lib32-mesa vulkan-radeon lib32-vulkan-radeon xf86-video-amdgpu

echo "<corepkgs_script> Downloading Web Browsers..."
sudo pacman -Sy firefox

echo "<corepkgs_script> Downloading Apps..."
#Antivirus Utilities
sudo pacman -Sy clamav
sudo pacman -Sy clamtk
sudo pacman -Sy rkhunter
#PC Utilities
sudo pacman -Sy diskmonitor
sudo pacman -Sy feh
sudo pacman -Sy vlc
sudo pacman -Sy balena-etcher
sudo pacman -Sy p7zip
sudo pacman -Sy wine
sudo pacman -Sy qalculate-qt
#install vlc compatability plugins
sudo pacman -Sy vlc-plugin-ffmpeg vlc-plugin-mpeg2 vlc-plugin-x264 vlc-plugin-ass vlc-plugin-matroska vlc-plugin-dvd vlc-plugin-bluray vlc-plugin-srt vlc-plugin-soxr libdvdcss libbluray
#PC Apps
sudo pacman -Sy libreoffice-still
sudo pacman -Sy gimp
sudo pacman -Sy thunderbird
sudo pacman -Sy steam 
sudo pacman -Sy audacity
sudo pacman -Sy obs-studio
sudo pacman -Sy filezilla
sudo pacman -Sy discord
sudo pacman -Sy lutris #GOG.com 3rd-party client.

echo "<corepkgs_script> If you wish to delete packages Do: sudo pacman -R {package_name} in the Terminal."
