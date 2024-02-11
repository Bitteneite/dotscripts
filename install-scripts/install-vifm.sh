#!/bin/sh

install() {
	sudo apt install -y vifm
	stow vifm -d ~/dotfiles
}

install
