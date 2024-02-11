#!/bin/sh

install() {
	sudo apt install kitty
	stow kitty -d ~/dotfiles
	sudo update-alternatives --config x-terminal-emulator
}

#Prompt
gum confirm "Do you wish to install Kitty?" && install
