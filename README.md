# Setup
1. Install zsh, vim, and tmux if not already installed. 
2. Install oh-my-zsh.
```sh
# with curl
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# with wget
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```
3. Clone this repo into your home directory as `.dotfiles`.
```sh
git clone git@github.com:luke-bassett/dotfiles.git ~/.dotfiles
```
4. Remove current dotfiles and add symlinks (maybe backup first!)
```sh
rm ~/.vimrc; ln -s ~/.dotfiles/.vimrc ~/.vimrc
rm ~/.tmux.conf; ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
rm ~/.zshrc; ln -s ~/.dotfiles/.zshrc ~/.zshrc
```

# To Do
- Add setup script
