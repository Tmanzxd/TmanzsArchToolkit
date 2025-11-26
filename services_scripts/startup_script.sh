#!/bin/bash
#Update Antivirus Databases
sudo freshclam

#Runs a full antivirus scan in another terminal on startup.
#If you wish to run this into a terminal do the following:
#<terminal_emulator> -e "sudo clamscan --remove --stdout --recursive /
sudo clamscan --remove --stdout --recursive /
