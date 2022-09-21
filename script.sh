#!/bin/bash

# Upgrade Latest MacOS updates and show progress
sudo softwareupdate -i -a --verbose

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install Homebrew Bundle and Cask from Brewfile
brew bundle --file=./Brewfile
