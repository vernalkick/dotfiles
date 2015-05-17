#!/usr/bin/env bash

# Use shared functions
. shared.sh

# Symlink new user settings (Packages, color schemes, etc.)
header "Setting up settings"
rm -rf ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
ensure_symlink ~/dotfiles/sublime-text/User ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/

# Update theme
header "Setting up theme"
ensure_repo ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/Theme\ -\ Spacegray git@github.com:vernalkick/Spacegray-Neue.git

# Install Package Control
curl -o ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/Package\ Control.sublime-package https://packagecontrol.io/Package%20Control.sublime-package
