#!/bin/sh

install() {
	stow fonts -d ~/dotfiles
	echo "MesloLGS NF successfully installed into ~/.fonts"
	echo "Please change your terminal's font to MesloLGS, size 14-16."
}

install
