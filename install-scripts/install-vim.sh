#!/bin/sh

install() {
	sudo nala install -y vim
	stow vim -d ~/dotfiles
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

install
