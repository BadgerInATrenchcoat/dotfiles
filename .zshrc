# colors
autoload -U colors && colors
PS1="%B%{$fg[cyan]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%&%~%{$fg[cyan]%}]%{$reset_color%}$%b "

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
source  /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# Sources
source $HOME/.config/broot/launcher/bash/br

# Aliases
#alias "code"="code --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform=wayland --ozone-platform-hint=auto"
#alias "tidal-hifi"="tidal-hifi --ozone-platform=wayland --enable-features=TouchpadOverscrollHistoryNavigation"
#alias "signal"="signal-desktop --enable-features=UseOzonePlatform --ozone-platform=wayland"
alias tput="trashy put"
alias tls="trashy list"
alias tres="trashy restore -r "
alias cat="bat -f --tabs 2"
## Colorize common commands
alias diff="diff --color=auto"
alias ls="ls --color -al"
alias grep="grep --color=auto"
alias ip="ip -color=auto"
alias zrl="source $HOME/.zshrc && source $HOME/.zshenv"
