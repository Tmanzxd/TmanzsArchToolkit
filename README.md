# TmanzsArchToolkit
Basic Directory with Bash Scripts to help in app setup of ArchLinux

# Important!!!
For Steam to work you need to enable multilib. to do this navigate to /etc/pacman.conf and uncomment it.

For rkhunter to not give false positives you need to navigate to /etc/rkhunter.conf and add the following whitelists:
SCRIPTWHITELIST=/usr/bin/egrep
SCRIPTWHITELIST=/usr/bin/fgrep
SCRIPTWHITELIST=/usr/bin/ldd
SCRIPTWHITELIST=/usr/bin/vendor_perl/GET
