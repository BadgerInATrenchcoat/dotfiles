# Colors
autoload -U colors && colors
# Default prompt and ranger prompt
#PS1="%B%{$fg[cyan]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%&%~%{$fg[cyan]%}]%{$reset_color%}$%b "
#  if [ -n "$RANGER_LEVEL" ]; then export PS1="%B%{$fg[cyan]%}[%{$fg[red]%}Ranger %{$fg[yellow]%}%&%~%{$fg[cyan]%}]%{$reset_color%}$%b "; fi
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

# Aliases
#alias "code"="code --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform=wayland --ozone-platform-hint=auto"
#alias "tidal-hifi"="tidal-hifi --ozone-platform=wayland --enable-features=TouchpadOverscrollHistoryNavigation"
#alias "signal"="signal-desktop --enable-features=UseOzonePlatform --ozone-platform=wayland"
alias tput="trashy put"
alias tls="trashy list"
alias tres="trashy restore -r "
alias cat="bat --tabs 2"
alias ll="ls -al"
## Colorize common commands
alias diff="diff --color=auto"
alias ls="ls --color"
alias grep="grep --color=auto"
alias ip="ip -color=auto"
alias zrl="source $HOME/.zshrc && source $HOME/.zshenv"
alias m="neomutt"
# Display command execution time next to prompt
function preexec() {
  timer=$(date +%s%3N)
}
function precmd() {
  if [ $timer ]; then
    local now=$(date +%s%3N)
    local d_ms=$(($now-$timer))
    local d_s=$((d_ms / 1000))
    local ms=$((d_ms % 1000))
    local s=$((d_s % 60))
    local m=$(((d_s / 60) % 60))
    local h=$((d_s / 3600))
    if ((h > 0)); then elapsed=${h}h${m}m
    elif ((m > 0)); then elapsed=${m}m${s}s
    elif ((s >= 10)); then elapsed=${s}.$((ms / 100))s
    elif ((s > 0)); then elapsed=${s}.$((ms / 10))s
    else elapsed=${ms}ms
    fi

    export RPROMPT="%F{cyan}${elapsed} %{$reset_color%}"
    unset timer
  fi
}

# Add Starship Prompt
eval "$(starship init zsh)"
