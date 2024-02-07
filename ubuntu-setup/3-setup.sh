#!/bin/sh

# Charm_ Gum prompt ----------------
install_prompt() {
  local name=$1
  local function=$2
  gum confirm "Do you wish to setup $name?" && $function
}


# Install oh-my-zsh ----------------
ohmyzsh(){
	sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}
install_prompt "Oh-my-Zsh" ohmyzsh


# Install zsh-autosuggestions ------
zshautosuggestions(){
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
}
install_prompt "zsh-autosuggestions" zshautosuggestions


# Install zsh-syntax-highlighting --
zshsyntaxhighlighting(){
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
}
install_prompt "zsh-syntax-highlighting" zshsyntaxhighlighting


# Install zsh-you-should-use -------
zshyoushoulduse(){
	git clone https://github.com/MichaelAquilina/zsh-you-should-use.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/you-should-use
}
install_prompt "zsh-you-should-use" zshyoushoulduse


# Install Powerlevel10k ------------
Powerlevel10k(){
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
}
install_prompt "Powerlevel10k" Powerlevel10k


# Install personal zsh config files
zshrcinstall(){
	rm ~/.zshrc
	stow zsh -d ~/dotfiles
	git restore .
}
install_prompt "configuration files" zshrcinstall
