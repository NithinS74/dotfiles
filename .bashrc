eval "$(starship init bash)"
export QT_QPA_PLATFORM=wayland
set -o vi
export LANG=en_US.UTF-8
export EDITOR="vim"
export TERMINAL="kitty"

eval "$(zoxide init bash)"
. "$HOME/.cargo/env"

alias pf="poweroff"
alias ls="exa -F"
alias l="exa -F"
alias ll="exa -laF"
alias cat="bat"
alias gcc="gcc -Wall -Wextra -Werror -O2 -std=c99 -pedantic"
export XDG_DATA_DIRS=$XDG_DATA_DIRS:/usr/share:/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share
