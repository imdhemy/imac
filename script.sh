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

# Install Docker Desktop if OS is Monterey
if [[ $(sw_vers -productVersion) == "12.0" ]]; then
    brew install --cask docker
fi
