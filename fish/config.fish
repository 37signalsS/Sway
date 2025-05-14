if status is-interactive

set -g fish_greeting

alias n='nvim'

alias nv='sudo -Es nvim'

alias cd='z'

alias lg='lazygit'

alias code='/bin/vscodium .'

alias vpnon='sudo systemctl start tailscaled && sleep 3 && sudo tailscale up'

alias vpnoff='sudo systemctl stop tailscaled && sleep 3 && sudo tailscale down'

alias l='eza --tree --icons=always --long --git'

alias s='sway -c /home/q/notebook/config'

zoxide init fish | source

thefuck --alias | source

starship init fish | source

atuin init fish | source

end

set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

set PATH $PATH /home/q/.local/bin
