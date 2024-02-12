#!/bin/sh

install() {
	sudo nala install kitty
	stow kitty -d ~/dotfiles
	sudo update-alternatives --config x-terminal-emulator
}

install
