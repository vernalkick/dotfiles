#!/usr/bin/env bash

# Use shared functions
. shared.sh

header "Setting up config files"

# Config files
ensure_symlink ~/dotfiles/vimrc ~/.vimrc
ensure_symlink ~/dotfiles/zshrc ~/.zshrc
ensure_symlink ~/dotfiles/gitconfig ~/.gitconfig
ensure_symlink ~/dotfiles/gitignore ~/.gitignore
ensure_symlink ~/dotfiles/gemrc ~/.gemrc


header "Setting up packages"

# Shell
ensure_repo ~/.oh-my-zsh git@github.com:robbyrussell/oh-my-zsh.git
ensure_repo ~/.oh-my-zsh/custom/plugins/pure git@github.com:sindresorhus/pure.git
ensure_repo ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting git@github.com:zsh-users/zsh-syntax-highlighting.git

# Set ZSH as the default shell
chsh -s /bin/zsh

# Vim
ensure_repo ~/.vim/bundle/vundle git@github.com:gmarik/vundle.git

# Ruby
ensure_repo ~/.rbenv git@github.com:sstephenson/rbenv.git
ensure_repo ~/.rbenv/plugins/ruby-build git@github.com:sstephenson/ruby-build.git

# Node
ensure_repo ~/.nvm git@github.com:creationix/nvm.git
