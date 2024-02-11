#!/bin/sh

install() {
	sudo apt install -y neofetch
	stow neofetch -d ~/dotfiles
}

install
