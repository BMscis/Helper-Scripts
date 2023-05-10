#!/bin/bash

# Install necessary packages
sudo apt install make curl
sudo apt install ca-certificates gnupg lsb-release

# Add Docker's GPG key and repository to APT sources
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
sudo echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \ $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update APT sources and install Docker
sudo apt-get update && sudo apt-get install docker-ce docker-ce-cli containerd.io

# Create the 'reach' directory and download Reach
mkdir -p ~/reach && cd ~/reach
curl https://docs.reach.sh/reach -o reach ; chmod +x reach
# Add ~/reach/reach to the PATH environment variable
echo 'export PATH="$HOME/reach:$PATH"' >> ~/.bashrc
source ~/.bashrc

#Install Nodejs
sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash