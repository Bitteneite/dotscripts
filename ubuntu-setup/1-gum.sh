#!/bin/sh

# Update and install necessary stuff
sudo apt update && sudo apt install -y curl gpg wget nala

# Debian/Ubuntu Installation for Charm Gum
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://repo.charm.sh/apt/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/charm.gpg
echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" | sudo tee /etc/apt/sources.list.d/charm.list
sudo nala update && sudo nala install gum -y

sh ./2-install.sh
sh ./3-extras.sh