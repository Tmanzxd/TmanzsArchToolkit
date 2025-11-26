#!/bin/bash

#Startup vars
current_user=$(whoami)

#For the folks doing a barebones ArchLinux install.
if [["$current_user" == "root"]]; then
	echo "<root_script> We are root!"
	pacman -Sy sudo #Install sudo
	
	echo "<root_script> would you like to edit visudo? (Y/N) [RECOMMENDED]"
	echo "<root_script> If you are new you should uncomment %wheel ALL on line 125."

	input1="O"
	input2="O"
	input3="O"

	#This is scuffed but it works.
	while [["$input1" != *"y"* || "$input1" != *"Y"* || "$input1" != *"n"* || "$input1" != *"N"*]]; do
		read input1
		if[["$input1" != *"y"* || "$input1" != *"Y"* || "$input1" != *"n"* || "$input1" != *"N"*]]; then
			echo "<root_script> Invalid Input. Try Again."

	case "$input1" in
		"y" | "Y")
			echo "<root_script> Which Text Editor? (vim/neovim/emacs/nano)"
			
			while [["$input2" != *"vim"* || "$input2" != *"emacs"* || "$input2" != *"nano"* || "$input2" != *"neovim"*]]; do
				read input2
				if[["$input2" != *"vim"* || "$input2" != *"emacs"* || "$input2" != *"nano"* || $"input2" != *"neovim"*]]; then
					echo "<root_script> Invalid Input. Try Again."

			case "$input2" in
				"vim")
					pacman -Sy vim
					EDITOR=vim visudo
					;;
				"neovim")
					pacman -Sy neovim
					EDITOR=neovim visudo
				"emacs")
					pacman -Sy emacs
					EDITOR=emacs visudo
					;;
				"nano")
					pacman -Sy nano
					EDITOR=nano visudo
					;;

				*) #Default case for any other val
					echo "<root_script> Invalid Input. Exiting..."
					exit
					;;
			esac
			;;
		"n" | "N")
			echo "<root_script> Continuing..."
			;;
		*)
			echo "<root_script> Invalid Input. Exiting..."
			exit
			;;
			
	esac
	#Setup User
	echo "<root_script> Input a username to use."
	read input3
	useradd -m $input3
	passwd $input3
	usermod -aG wheel $input3
	echo "<root_script> Success! Switching to user session."
	su - $input3
fi
