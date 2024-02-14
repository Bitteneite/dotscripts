#!/bin/sh

# Clone dotfiles repository ---------
clone_repo() {
	git clone https://github.com/Bitteneite/dotfiles.git ~/dotfiles
}
#Prompt
gum confirm "Do you wish to clone the required dotfiles repository?" && clone_repo 


# Installing packages ---------------
choose_packages() {
	cat applist.txt | gum choose --no-limit --header="Select Packages to install..." > temp.txt
}
install_packages() {
	sudo -v # Check sudo password
	xargs sudo nala install -y < temp.txt # Install all from applist.txt
	rm temp.txt
}

#Create a .config folder
mkdir ~/.config

#Prompt
choose_packages
if [ -s "temp.txt" ]; then
	install_packages
fi

