# colors
autoload -U colors && colors
PS1="%B%{$fg[cyan]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%&%~%{$fg[cyan]%}]%{$reset_color%}$%b "

# history
HISTSIZE=150000
SAVEHIST=100000
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

# Plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source  /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# Aliases
#alias "code"="code --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform=wayland --ozone-platform-hint=auto"
#alias "tidal-hifi"="tidal-hifi --ozone-platform=wayland --enable-features=TouchpadOverscrollHistoryNavigation"
#alias "signal"="signal-desktop --enable-features=UseOzonePlatform --ozone-platform=wayland"
alias "ls"="ls --color -al"
source /home/user/.config/broot/launcher/bash/br
