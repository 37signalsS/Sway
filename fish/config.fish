# set -Ux GOOGLE_CLOUD_PROJECT "_"

if status is-interactive

set -g fish_greeting

alias n='nvim'

alias nv='sudo -Es nvim'

alias cd='z'

alias lg='lazygit'

alias ze='zeditor'

alias rm='trash'

alias code='/bin/vscodium'

alias vpnon='sudo systemctl start tailscaled && sleep 3 && sudo tailscale up'

alias vpnoff='sudo systemctl stop tailscaled && sleep 3 && sudo tailscale down'

alias l='eza --tree --icons=always --long --git -a'

alias s='niri -c /home/q/notebook1/niri/config.kdl'

alias d="sudo -v; cd (sudo find / -type d 2>/dev/null | fzf --preview 'tree -C {}' --preview-window=right:50%)"

zoxide init fish | source

thefuck --alias | source

starship init fish | source

atuin init fish | source

end

set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

set PATH $PATH /home/q/.local/bin
