# Setup

## Dependencies

Install via Homebrew:
```sh
brew install zsh vim tmux starship fzf zsh-autosuggestions zsh-syntax-highlighting
```

## Clone & initialize

```sh
git clone git@github.com:luke-bassett/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
git submodule update --init   # pulls fzf-tab
```

## Symlinks

```sh
ln -sf ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/.vimrc ~/.vimrc
ln -sf ~/.dotfiles/.tmux.conf ~/.tmux.conf
mkdir -p ~/.config
ln -sf ~/.dotfiles/starship.toml ~/.config/starship.toml
```

## iTerm2

- Import `tango_modified.itermcolors` as the default color scheme.
- Follow this [guide](https://weibeld.net/terminals-and-shells/italics.html) to enable italics. **tmux will be broken without this.**

## Notes

- `fzf-tab` is a git submodule — update with `git submodule update --remote`
- Starship config lives at `~/.dotfiles/starship.toml` (symlinked to `~/.config/starship.toml`)
