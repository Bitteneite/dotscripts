#!/bin/sh

install() {
  git clone https://github.com/jarun/nnn.git ~/GitHub/nnn
  cd ~/GitHub/nnn
  sudo apt install build-essential pkg-config libncursesw5-dev libreadline-dev -y
  sudo make O_NERD=1 strip install
}

install
