# Colors
autoload -U colors && colors

# history
HISTSIZE=1000000
SAVEHIST=100000
setopt HIST_IGNORE_SPACE
HISTFILE=~/.cache/zsh/history

# auto/tab completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Hotkeys
## Ctrl+Arrow = word skip
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
## Bind Up/Down arrows to ZSH-Substring-Search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source <(fzf --zsh)

# Aliases
# Wayland flags for electron / chromium applications "--enable-features=UseOzonePlatform --ozone-platform=wayland"
alias cat="bat --tabs 2"
alias ll="ls -al"
alias mv="mv -i"
alias cp="cp -i"
## Colorize common commands
alias diff="diff --color=auto"
alias ls="ls --color"
alias grep="grep --color=auto"
alias ip="ip -color=auto"
alias zrl="source $HOME/.zshrc && source $HOME/.zshenv"
alias emacsclient="emacsclient -c a 'nvim'"
alias bootwin="efibootmgr --bootnext 0001"

# Add Starship Prompt
eval "$(starship init zsh)"

# XDG Variables
XDG_CURRENT_DESKTOP=sway

# Path Additions
