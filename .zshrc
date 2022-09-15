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
)


# notes directory
alias notesync='if [[ $(git config -l | grep remote.origin.url)="remote.origin.url=git@github.com:luke-bassett/notes.git" ]]; then git add -A && git commit -m 'notesync' && git push; fi'

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Custom alias, should be after "source $ZSH/oh-my-zsh.sh"
alias l="ls -1"
alias la="ls -lAh"
alias ll="ls -lh"
alias t="tmux"
alias tls="tmux ls"
alias ta="tmux attach -t"
alias gs="git status"
alias ga="git add"
alias gaa="git add -A"
alias gcm="git commit -m" 
alias gpo="git push origin"
