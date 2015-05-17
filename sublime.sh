#!/usr/bin/env bash

# Use shared functions
. shared.sh

# Remove existing user folder
rm -rf ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

header "Setting up settings"

# Symlink new user settings (Packages, color schemes, etc.)
ensure_symlink ~/dotfiles/sublime-text/User ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/

header "Setting up theme"

# Update theme
ensure_repo ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/Theme\ -\ Spacegray git@github.com:vernalkick/Spacegray-Neue.git
