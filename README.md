# Setup
1. Install zsh, vim, and tmux if not already installed. 
1. Install oh-my-zsh.
```sh
# with curl
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# with wget
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```
1. Clone this repo into your home directory as `.dotfiles`.
```sh
git clone git@github.com:luke-bassett/dotfiles.git ~/.dotfiles
```
1. [Install
   Powerlevel10k](https://github.com/romkatv/powerlevel10k#getting-started)
   (Meslo Nerd fonts need to be installed manually if not in iTerm2 or Termux)
```sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i '' 's/ZSH_THEME=".*"/ZSH_THEME="powerlevel10k"/' ~/.dotfiles/.zshrc
```
1. Remove current dotfiles and add symlinks (maybe backup first!)
```sh
rm ~/.vimrc; ln -s ~/.dotfiles/.vimrc ~/.vimrc
rm ~/.tmux.conf; ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
rm ~/.zshrc; ln -s ~/.dotfiles/.zshrc ~/.zshrc
```

# To Do
- Add setup script
