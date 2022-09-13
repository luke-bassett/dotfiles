# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

alias l="ls -1"
alias t="tmux"
alias tls="tmux ls"
alias ta="tmux attach -t"
alias gs="git status"
alias ga="git add"
alias gaa="git add -A"
alias gcm="git commit -m" 
alias gpo="git push origin"

# notes directory
alias notesync='if [[ $(git config -l | grep remote.origin.url)="remote.origin.url=git@github.com:luke-bassett/notes.git" ]]; then git add -A && git commit -m 'notesync' && git push; fi'
