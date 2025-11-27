# TmanzsArchToolkit
Basic Directory with Bash Scripts to help in app setup of ArchLinux.

Sets up an on Startup Antimalware and Antirootkit scan alongside a script that updates all software on the PC before shutting down.

This is setup to my liking but also tries to provide choice to those on Arch-based distros.

# Important!!!
For Steam to work you need to enable multilib. to do this navigate to /etc/pacman.conf and uncomment it.

For rkhunter to not give false positives you need to navigate to /etc/rkhunter.conf and add the following whitelists:
SCRIPTWHITELIST=/usr/bin/egrep
SCRIPTWHITELIST=/usr/bin/fgrep
SCRIPTWHITELIST=/usr/bin/ldd
SCRIPTWHITELIST=/usr/bin/vendor_perl/GET

The root_script.sh currently does not work. This was intended to be a script to make the initial setup process for installing the sudo package and setup of a user and password easier.
Will eventually rewrite but if you need assistance setting up sudo I recommend this source: https://wiki.archlinux.org/title/Sudo

# OPTIONAL
To install programming software:
run TmanzArchToolkit/packages/codingpkg_installer.sh
packages listed below.

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
- java-runtime (Open-source implementation of Java Platform, Standard Edition) https://wiki.archlinux.org/title/Java
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
