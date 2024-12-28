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
alias emacsclient="emacsclient -c -n -a ''" 
alias bootwin="sudo efibootmgr --bootnext 0001 && reboot"
alias calcurse-caldav='CALCURSE_CALDAV_PASSWORD=$(pass show calcurse-cd) calcurse-caldav'
#alias fzf='fzf --tmux 80% --layout reverse --border'
#alias es='fzf --color=spinner:#88C0D0,hl:#81A1C1,fg:#D8DEE9,header:#88C0D0,info:#8FBCBB,pointer:#88C0D0,marker:#88C0D0,fg+:#ECEFF4,bg+:#3B4252,prompt:#81A1C1,hl+:#A3BE8C,border:#4C566A,gutter:-1,query:#D8DEE9,disabled:#4C566A,preview-fg:#E5E9F0,preview-border:#4C566A --height 40% --border rounded --layout=reverse --prompt="❯ " --pointer="❯" --marker="❯" --preview "bat --style=numbers --color=always {}" --preview-window=right:hidden --bind "l:preview-down,h:preview-up,enter:execute(nvim {})"'
[ -f ~/.config/fzf/config.sh ] && source ~/.config/fzf/config.sh
alias es='fzf --bind "enter:execute(nvim {})"'
# Add Starship Prompt
eval "$(starship init zsh)"
# XDG Variables
XDG_CURRENT_DESKTOP=sway

# Tmux
## Auto-start tmux and attach to session
#if [ -z "$TMUX" ] && [ -n "$DISPLAY" ]; then
#    tmux attach -t main || tmux new-session -s main
#fi
## Autostart tmux session in background
if ! tmux has-session -t main 2>/dev/null; then
    tmux new-session -d -s main
fi

