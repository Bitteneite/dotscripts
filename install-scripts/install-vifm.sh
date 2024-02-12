#!/bin/sh

install() {
	sudo nala install -y vifm
	stow vifm -d ~/dotfiles
}

install
