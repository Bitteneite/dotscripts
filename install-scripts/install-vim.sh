#!/bin/sh

install() {
	sudo apt install -y vim
	stow vim -d ~/dotfiles
}

install
