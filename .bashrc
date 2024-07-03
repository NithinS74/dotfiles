eval "$(starship init bash)"
export QT_QPA_PLATFORM=wayland
set -o vi
export LANG=en_US.UTF-8
export EDITOR="vim"

eval "$(zoxide init bash)"
. "$HOME/.cargo/env"

alias pf="poweroff"
alias ls="exa -F"
alias l="exa -F"
alias ll="exa -laF"
alias cat="bat"
