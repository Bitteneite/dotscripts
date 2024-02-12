#!/bin/sh

install() {
	sudo nala install -y vim
	stow vim -d ~/dotfiles
}

install
