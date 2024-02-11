#!/bin/sh

# Update and install necessary stuff
sudo apt update && sudo apt install curl gpg wget

# Debian/Ubuntu Installation for Charm Gum
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://repo.charm.sh/apt/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/charm.gpg
echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" | sudo tee /etc/apt/sources.list.d/charm.list
sudo apt update && sudo apt install gum -y

sh ./2-install.sh
sh ./3-setup.sh
sh ./4-extras.sh