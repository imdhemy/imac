#!/usr/bin/env bash

# Upgrade Latest MacOS updates and show progress
sudo softwareupdate -i -a --verbose

# Install Homebrew if not installed
Homebrew=$(which brew)
if [ -z "$Homebrew" ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Install Homebrew Bundle and Cask from Brewfile
brew bundle --file=./Brewfile

# Install LTS Node.js if not installed
Node=$(which node)
if [ -z "$Node" ]; then
    echo "Installing LTS Node.js..."
    nvm install --lts
fi

# Generate GPG Key
gpg --default-new-key-algo rsa4096 --gen-key

# Get ID of GPG Key
GPGID=$(gpg --list-secret-keys --keyid-format LONG | grep sec | cut -d'/' -f2 | cut -d' ' -f1)

# Copy the GPG Key ID in ASCII armor format to clipboard
gpg --armor --export "$GPGID" | pbcopy

echo "Key copied to clipboard. Paste it into GitHub."

# Open browser to GitHub GPG Key page
open https://github.com/settings/gpg/new

# Configure Git [user], [gpg] and [commit]
git config --global user.name "Mohamad Eldhemy"
git config --global user.email "imdhemy@gmail.com"
git config --global user.signingkey "$GPGID"
git config --global gpg.program gpg
git config --global commit.gpgsign true
