# ---

unsetopt beep

# Keybindings
bindkey -e
bindkey '^[[1;5A' history-search-backward # ctrl up
bindkey '^[[1;5B' history-search-forward # ctrl down

# Aliases
alias ls='ls --color'
alias ll='ls -alF'
alias dcu='docker compose up --build'
alias dcd='docker compose down'
alias per='sudo chown -R $USER:$USER ~/sh'

# Shell History
HISTFILE=~/.zhistory
HISTSIZE=3000
SAVEHIST=$HISTSIZE
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE # (to prevent sensitive info from being saved)

# Completion
zstyle :compinstall filename '/home/ubuntu/.zshrc' # manual completion setup destionation
autoload -Uz compinit && compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' format '%d:'
eval "$(dircolors -b)"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' '+m:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' menu select=2
zstyle ':completion:*' original true
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

# Plugins
source ~/.zplugins/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zplugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zplugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# ---