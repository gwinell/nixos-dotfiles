# ==============================================================================
# HISTORY SETTINGS & COMPLETION
# ==============================================================================
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory sharehistory hist_ignore_dups hist_ignore_space

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# ==============================================================================
# ALIASES
# ==============================================================================
alias ls='ls --color=auto'
alias ll='ls -lah'
alias grep='grep --color=auto'
alias conf='cd ~/nixos-dotfiles'
alias rebuild='sudo nixos-rebuild switch --flake ~/nixos-dotfiles#nixos-arlo'

# ==============================================================================
# KEYBINDINGS
# ==============================================================================
bindkey '^[[A' up-line-or-search   
bindkey '^[[B' down-line-or-search 
bindkey '^[[H' beginning-of-line   
bindkey '^[[F' end-of-line         
bindkey '^[[3~' delete-char
