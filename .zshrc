# --- completion ---
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
source ~/.dotfiles/fzf-tab/fzf-tab.plugin.zsh

# --- fzf ---
source <(fzf --zsh)

# --- plugins ---
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# --- vi mode ---
bindkey -v
export KEYTIMEOUT=1
# up/down arrow searches history by prefix of what's already typed
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

# --- prompt ---
eval "$(starship init zsh)"

# --- ls colors ---
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad  # cyan directories (prompt uses blue)

# --- aliases ---
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

alias ssh="TERM=xterm-256color ssh"

alias v="vim"
alias ve="vim '+ normal G'"

# open this week's note
n() { vim ~/notes/$(date +%Yw%V).md }
