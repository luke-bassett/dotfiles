Bare repo dotfile managment, technique from this article:
https://www.atlassian.com/git/tutorials/dotfiles

## To install on new system
Add this to `.bashrc` or `.zshrc`

```
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

Clone the repo and set it to ignore untracked files

```
$ git clone --bare git@github.com:luke-bassett/dotfiles.git $HOME/.cfg
$ config config --local status.showUntrackedFiles no
```
And then checkout

```
$ config checkout
```

## Basic usage example
```
config status
config add .vimrc
config commit -m "Add vimrc"
config add .bashrc
config commit -m "Add bashrc"
config push
```
