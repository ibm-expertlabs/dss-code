#!/bin/bash

#package lists
echo "Updating package lists..."
sudo dnf -y update

# Add GitHub CLI repository
echo "Adding GitHub CLI repository..."
sudo dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo

# Install GitHub CLI
echo "Installing GitHub CLI..."
sudo dnf -y install gh

# Install jq
echo "Installing jq..."
sudo dnf -y install jq

# Install Development Tools
echo "Installing Development Tools..."
sudo dnf -y groupinstall 'Development Tools'

# Install Node.js development module
echo "Installing Node.js development module..."
sudo dnf -y module install nodejs/development

# Install tree
echo "Installing tree..."
sudo dnf -y install tree

#install TKN command line 
curl -LO https://github.com/tektoncd/cli/releases/download/v0.21.0/tkn_0.21.0_Linux_x86_64.tar.gz
tar xvzf tkn_0.21.0_Linux_x86_64.tar.gz -C /usr/local/bin/ tkn


# Install kubeseal 
wget https://github.com/bitnami-labs/sealed-secrets/releases/download/v0.16.0/kubeseal-linux-amd64 -O kubeseal
chmod +x kubeseal
sudo mv kubeseal /usr/local/bin/
kubeseal --version


echo "All packages installed successfully."
