#!/bin/sh

install() {
	sudo apt install tmux -y
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	stow tmux -d ~/dotfiles
}

#Prompt
gum confirm "Do you wish to install tmux?" && install
