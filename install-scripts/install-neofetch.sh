#!/bin/sh

install() {
	sudo nala install -y neofetch
	stow neofetch -d ~/dotfiles
}

install
