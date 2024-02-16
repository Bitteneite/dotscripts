#!/bin/sh

install() {
	sudo apt install ninja-build gettext cmake unzip curl
	git clone https://github.com/neovim/neovim $HOME/GitHub/neovim
	cd $HOME/GitHub/neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
	cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb
	stow vim -d ~/dotfiles
}

install
