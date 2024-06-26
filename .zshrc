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
source $HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.config/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source $HOME/.config/zsh/plugins/fzf/fzf.zsh
# Aliases
# Wayland flags for electron / chromium applications "--enable-features=UseOzonePlatform --ozone-platform=wayland"
alias t="trashy put"
alias tls="trashy list"
alias tres="trashy restore -r "
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
alias m="neomutt"
alias emacsclient="emacsclient -c a 'nvim'"

# Add Starship Prompt
eval "$(starship init zsh)"

# Path Additions
export PATH="$HOME/.config/emacs/bin:/usr/local/lib/:$PATH"
