# TmanzsArchToolkit
Basic Directory with Bash Scripts to help in app setup of ArchLinux.

Sets up an on Startup Antimalware and Antirootkit scan alongside a script that updates all software on the PC before shutting down.

This is setup to my liking but also tries to provide choice to those on Arch-based distros.

# Instructions
run ./RUNME.sh in terminal while within the TmanzsArchToolkit directory.

# OPTIONAL
To install programming software:
run ./packages/codingpkg_installer.sh in terminal while within the TmanzsArchToolkit directory.
packages listed below.

# Important!!!
This will not work on immutable file systems (SteamOS, Bazzite, etc.)

For Steam to work you need to enable multilib. to do this navigate to /etc/pacman.conf and uncomment it.

For rkhunter to not give false positives you need to navigate to /etc/rkhunter.conf and add the following whitelists:
SCRIPTWHITELIST=/usr/bin/egrep
SCRIPTWHITELIST=/usr/bin/fgrep
SCRIPTWHITELIST=/usr/bin/ldd
SCRIPTWHITELIST=/usr/bin/vendor_perl/GET

When installing Paru, make sure you install Rust dependencies or else it will not work.

The root_script.sh currently does not work. This was intended to be a script to make the initial setup process for installing the sudo package and setup of a user and password easier.
Will eventually rewrite but if you need assistance setting up sudo I recommend this source: https://wiki.archlinux.org/title/Sudo

Make sure you have your user setup before running display.sh to install Desktop Environment & Display Manager!

# Installed Packages!

==== corepkg_installer ====
---------------------------
Dependencies (Mainly used for DaVinci Resolve, a Video Editor):
 glu (OpenGL Utility Library) https://archlinux.org/packages/extra/x86_64/glu/
- gtk2 (GIMP Toolkit, Old Ver.) https://wiki.archlinux.org/title/GTK
- libpng12 (A collection of routines used to create PNG format graphics files) https://aur.archlinux.org/packages/libpng12
- fuse2 (Interface for userspace programs to export a filesystem to the Linux kernel) https://archlinux.org/packages/extra/x86_64/fuse2/
- opencl-driver (Open Computing Language Driver) https://wiki.archlinux.org/title/GPGPU
- qtf-xllextras (Cross-platform Application and Widget Toolkit, same applies for qt5 downloads) https://wiki.archlinux.org/title/Qt
- qt5-svg
- qt5-webengine 
- qt5-quickcontrols2 
- qt5-multimedia 
- libxcrypt-compat (Modern library for one-way hashing of passwords - legacy API functions) https://archlinux.org/packages/core/x86_64/libxcrypt-compat/
- xmlsec (XML Security Library is a C library based on LibXML2) https://archlinux.org/packages/extra/x86_64/xmlsec/
- java-runtime https://wiki.archlinux.org/title/Java
- python-numpy (Scientific tools for Python) https://archlinux.org/packages/extra/x86_64/python-numpy/
- tbb (Thread Building Blocks) https://archive.org/details/archlinux_pkg_tbb | https://archlinuxarm.org/packages/aarch64/onetbb
- apr-util (The Apache Portable Runtime Library) https://archlinux.org/packages/extra/x86_64/apr-util/
- libc++ (LLVM C++ standard library) https://archlinux.org/packages/extra/x86_64/libc++/
- libc++abi (Low level support for the LLVM C++ standard library) https://archlinux.org/packages/extra/x86_64/libc++abi/

Text Editors:
- vim https://wiki.archlinux.org/title/Vim
- neovim https://wiki.archlinux.org/title/Neovim
- nano (MOST NEWBIE FRIENDLY) https://wiki.archlinux.org/title/Nano
- emacs https://wiki.archlinux.org/title/Emacs

Code Management/Compilation:
- git (Version Control System) https://wiki.archlinux.org/title/Git
- gcc (C++ Compiler) https://wiki.archlinux.org/title/GNU_Compiler_Collection
- openssh (Set of computer programs providing encrypted communication sessions over a computer network using the Secure Shell (SSH) protocol.)  https://wiki.archlinux.org/title/OpenSSH
- base-devel (Basic tools to build Arch Linux packages) https://archlinux.org/packages/core/any/base-devel/

Graphics Drivers [Choose based on what you got]:
- nvidia
- amd

Web Browsers:
- Firefox

Antivirus Utilities:
- clamav (Open source anti-virus toolkit for UNIX) https://wiki.archlinux.org/title/ClamAV
- clamtk (Graphical User Interface Frontend for clamAV) https://archlinux.org/packages/extra/any/clamtk/
- rkhunter (Security Monitoring tool for POSIX compliant systems, scans for rootkits and other vulnerabilities) https://wiki.archlinux.org/title/Rkhunter

PC Utilities:
- diskmonitor (KDE tools to monitor SMART devices and MDRaid health status) https://aur.archlinux.org/packages/diskmonitor
- feh (Lightweight Image Vierwer) https://wiki.archlinux.org/title/Feh
- vlc (Free Open Source Multimedia Player) https://wiki.archlinux.org/title/VLC_media_player
- balena-etcher (Flash OS images to SD cards & USB drives, safely and easily) https://aur.archlinux.org/packages/balena-etcher
- 7zip (File archiver for extremely high compression) https://archlinux.org/packages/extra/x86_64/7zip/
- wine (Windows Compatibility Layer for UNIX systems) https://wiki.archlinux.org/title/Wine
- qalculate-qt  (Cross-Platform Calculator) https://archlinux.org/packages/extra/x86_64/qalculate-gtk/

PC Apps:
- libreoffice-still (stable release of libreoffice, an alternative office suite to microsoft office) https://wiki.archlinux.org/title/LibreOffice
- GIMP (Image Editing Program) https://wiki.archlinux.org/title/GIMP
- Thunderbird (Open source email, news, and chat client) https://wiki.archlinux.org/title/Thunderbird
- Steam (If you don't know what this is you're not a real Gamer) https://wiki.archlinux.org/title/Steam
- Audacity (Audio Editing Program) https://wiki.archlinux.org/title/Audacity
- obs-studio (Livestreaming/recoring program) https://wiki.archlinux.org/title/Open_Broadcaster_Software
- filezilla (FTP, FTPS, and SFTP Client) https://archlinux.org/packages/extra/x86_64/filezilla/
- discord (For those who live under a rock [its probs worth it tbh]) https://wiki.archlinux.org/title/Discord
- lutris (video game preservation platform, can run Steam, epic, gog, dolphin emulator, etc...) https://lutris.net/ || https://archlinux.org/packages/extra/any/lutris/ || https://wiki.archlinux.org/title/Gaming

==== aurs_script ====
---------------------------
Dependencies:
- yay (Yet another yogurt. Pacman wrapper and AUR helper written in go.) https://aur.archlinux.org/packages/yay
- libcprime (A library for bookmarking, saving recent activites, managing settings of C-Suite) https://aur.archlinux.org/packages/libcprime

PC Utilities:
- corestats (A system resource viewer from the C Suite) https://aur.archlinux.org/packages/corestats
- coretime (A time related task manager from the C Suite) https://aur.archlinux.org/packages/coretime
- arttime-git (arttime is a clock, timer, time manager and text-art viewer for the terminal (https://github.com/poetaman/arttime/wiki)) https://aur.archlinux.org/packages/arttime-git
- tkpacman (A lightweight GUI for pacman built with Tcl/Tk) https://aur.archlinux.org/packages/tkpacman

PC Apps:
- freetube-bin (An open source desktop YouTube player built with privacy in mind.) https://aur.archlinux.org/packages/freetube
- Brave Browser (Web browser that blocks ads and trackers by default (binary release)) https://aur.archlinux.org/packages/brave-bin
- Davinci Resolve (Video Editor) https://wiki.archlinux.org/title/DaVinci_Resolve

==== codingpkg_installer ====
---------------------------
- sqlite (Software Library that implements a self-contained SQL database engine, sorry Chkrta) https://wiki.archlinux.org/title/SQLite
- .NET-sdk (FOSS software framework from Microsoft for C#, Visual Basic, and F#) https://wiki.archlinux.org/title/.NET
- r (System for statistical computation and graphics) https://wiki.archlinux.org/title/R
- rstudio (A powerful and productive integrated development environment (IDE) for R programming language) https://aur.archlinux.org/packages/rstudio-desktop
- code (Code is a cross-platform text editor developed by Microsoft, built on the Electron framework) https://wiki.archlinux.org/title/Visual_Studio_Code
- jre-openjdk https://wiki.archlinux.org/title/Java

==== display_installer ====
---------------------------
- xfce4 (lightweight desktop environment for UNIX-like operating systems. It aims to be fast and low on system resources, while still being visually appealing and user friendly.) https://xfce.org/
- lightdm (A cross-desktop display manager) https://wiki.archlinux.org/title/LightDM
- (Not installed but the theme I plan on using for xfce4!) https://www.xfce-look.org/p/1016619
