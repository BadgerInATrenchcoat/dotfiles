# Application Defaults
export EDITOR="nvim"
export GIT_EDITOR="nvim"
export VISUAL="nvim"
export PAGER="less"

# Force Wayland
export QT_QPA_PLATFORM="wayland"
#export GDK_BACKEND="wayland"
export MOZ_ENABLE_WAYLAND=1

# Theming
export BAT_THEME="Nord"
export BAT_STYLE="changes,header-filename,header-filesize,grid,numbers"
export MANPAGER="less -R --use-color -Dd+r -Du+b"
export MANROFFOPT="-P -c"
export QT_QPA_PLATFORMTHEME="qt5ct:qt6ct"
export QT_STYLE_OVERRIDE="kvantum"
export GTK_THEME="Pop-nord-dark"

# Path
export PATH="$HOME/.config/emacs/bin:/usr/local/lib/:$PATH"
