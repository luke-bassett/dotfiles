# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  zsh-autosuggestions
  vi-mode
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Custom alias, should be after "source $ZSH/oh-my-zsh.sh"
# notes directory
alias notesync='if [[ $(git config -l | grep remote.origin.url)="remote.origin.url=git@github.com:luke-bassett/notes.git" ]]; then git add -A && git commit -m 'notesync' && git push; fi'
# outputs meal tracker from log
# Usage 'ft {n}' where n is number of line to show from tail
alias fl="grep -E '(## \d{4}|^ate@\d{4})' ~/notes/log/2022.md"
alias ft="fl | tail -n"

alias l="ls -1"
alias la="ls -lAh"
alias ll="ls -lh"

alias t="tmux"
alias tls="tmux ls"
alias ta="tmux attach -t"

alias gs="git status"
alias ga="git add"
alias gaa="git add -A"
alias gc="git commit"
alias gcm="git commit -m" 
alias gpo="git push origin"
alias gl="git log --graph --all --format=format:'%C(bold blue)%h%C(reset) %C(bold yellow)%d%C(reset) %C(white)%s%C(reset) %C(green)(%ar)%C(reset) %C(dim white)%an%C(reset)'"
alias gll="git log --graph --decorate --all --format=format:'%C(bold blue)%h%C(reset) %C(bold yellow)%d%C(reset)%n%C(green)%ar%C(reset) - %an%n%C(bold white)%s%C(reset)%n%b'"
