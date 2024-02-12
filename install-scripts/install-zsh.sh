#!/bin/sh

# Install oh-my-zsh ----------------
ohmyzsh(){
	sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}


# Install zsh-autosuggestions ------
zshautosuggestions(){
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
}


# Install zsh-syntax-highlighting --
zshsyntaxhighlighting(){
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
}


# Install zsh-you-should-use -------
zshyoushoulduse(){
	git clone https://github.com/MichaelAquilina/zsh-you-should-use.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/you-should-use
}


# Install Powerlevel10k ------------
Powerlevel10k(){
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
}


# Install personal zsh config files
zshrcinstall(){
	rm ~/.zshrc
	stow zsh -d ~/dotfiles
	git restore .
}


sudo nala install -y zsh
ohmyzsh
zshautosuggestions
zshsyntaxhighlighting
zshyoushoulduse
Powerlevel10k
zshrcinstall
chsh -s $(which zsh)