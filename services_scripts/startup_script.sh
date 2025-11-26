#!/bin/bash
#Update Antivirus Databases
sudo freshclam
sudo rkhunter --propupd
sudo rkhunter --update

#Validate config files
rkhunter --config-check

#Runs a full antivirus scan on startup.
#If you wish to run this into a terminal do the following:
#<terminal_emulator> -e "sudo clamscan --remove --stdout --recursive /
sudo clamscan --remove --stdout --recursive /
rkhunter --check --sk
