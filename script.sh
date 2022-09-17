#!/usr/bin/env bash

# TODO: Generate a brewfile

# Upgrade Latest MacOS updates and show progress
sudo softwareupdate -i -a --verbose

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install github desktop
brew install github --cask

# Install Fira Code font
brew tap homebrew/cask-fonts
brew install font-fira-code

# Install Docker desktop for Mac
brew install docker --cask
