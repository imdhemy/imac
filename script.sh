#!/usr/bin/env bash

# TODO: Generate a brewfile

# Upgrade Latest MacOS updates and show progress
sudo softwareupdate -i -a --verbose

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install freetds
brew install freetds

# Install PHP, Composer, and Xdebug
brew install php
brew install composer
pecl install xdebug

# Install github desktop
brew install github --cask

# Install Fira Code font
brew tap homebrew/cask-fonts
brew install font-fira-code

# Install Docker Desktop if OS is 12.0 or higher
if [[ $(sw_vers -productVersion | cut -d '.' -f 2) -ge 12 ]]; then
    brew install docker --cask
fi

# Install Spectacle window manager
brew install spectacle --cask
