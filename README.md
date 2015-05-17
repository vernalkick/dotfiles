# Dotfiles

Based off of [David Cornu's dotfiles](https://github.com/davidcornu/dotfiles).

## Installation

```shell
$ cd ~/
$ git clone git@github.com:vernalkick/dotfiles.git
$ cd ~/dotfiles
$ ./bootstrap.sh
```

Optionally you can also run `sublime.sh` to configure Sublime Text:

```shell
$ cd ~/dotfiles
$ ./sublime.sh
```

The boostrap script will symlink config files from `~/dotfiles` into `~/` and install the following packages:

- https://github.com/robbyrussell/oh-my-zsh
- https://github.com/sindresorhus/pure
- https://github.com/zsh-users/zsh-syntax-highlighting
- https://github.com/gmarik/vundle
- https://github.com/sstephenson/rbenv
- https://github.com/sstephenson/ruby-build
- https://github.com/creationix/nvm

## Updating

```shell
$ cd ~/dotfiles
$ git pull
$ ./bootstrap.sh
$ ./sublime.sh
```
