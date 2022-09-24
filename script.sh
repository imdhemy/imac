#!/usr/bin/env bash

# Upgrade Latest MacOS updates and show progress
sudo softwareupdate -i -a --verbose

# Install Homebrew if not installed
if test ! $(which brew); then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Install Homebrew Bundle and Cask from Brewfile
brew bundle --file=./Brewfile

# Install LTS Node.js
sudo n lts
