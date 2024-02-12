#!/bin/sh

install() {
	sudo nala install tmux -y
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	stow tmux -d ~/dotfiles
}

install
