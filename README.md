# SWAY CATPPUCCIN 

![Sway](/Pictures/swappy-20250422_125704.png)

## УСТАНОВКА ЭТОГО КОНФИГА

Склонировать репозиторий:
```
git clone https://github.com/37signalsS/sway.git
```
Cкопировать все в ~/.config

## Software
```
sudo pacman -S swaybg gammastep swaylock swappy xorg-xwayland wl-clipboard cliphist autotiling nwg-look wlroots xdg-user-dirs slurp grim swaync waybar wofi xdg-desktop-porlal-wlr telegram-desktop nemo ghostty libreoffice tailscale yazi haruna pavucontrol obs-studio gthumb zenith zoxide fzf micro fish wireguard-tools gvfs jq unzip p7zip fastfetch cmus docker docker-compose polkit-gnome thefuck kolourpaint keepassxc libreoffice-still-ru virtualbox scrcpy android-tools eza git-delta atuin lazygit blueman syncthing yt-dlp fragments kdeconnect network-manager-applet nm-connection-editor power-profiles-daemon dive translate-shell p7zip flatpak zed 
```
```
yay -S discord-canary vesktop zen-browser-bin onlyoffice-bin youtube-music-bin lens-bin lazydocker pomatez ttf-times-new-roman vscodium-bin
```
```
https://app.warp.dev/get_warp
sudo pacman -U ./<имя_файла>.pkg.tar.zst

https://www.waveterm.dev/download
sudo pacman -U <имя_файла>

flatpak install flathub app.freelens.Freelens
```
### Nvim
```
export EDITOR=nvim
```
### Terminal
```
curl -sS https://starship.rs/install.sh | sh
```
```
chsh -s /usr/bin/fish
```
## Powersave battery laptop(only Thinkpad)
```
sudo pacman -S tlp tlp-rdw powertop tp_smapi acpi_call
```
```
sudo systemctl mask systemd-rfkill.service && sudo systemctl mask systemd-rfkill.socket
```
Изменить дефолтный конфиг tlp в /etc/tlp.conf
```
micro /etc/systemd/system/powertop.service
```
```
[Unit]
Description=Powertop tunings

[Service]
Type=oneshot
RemainAfterExit=yes
ExecStart=/usr/bin/powertop --auto-tune

[Install]
WantedBy=multi-user.target
```
```
sudo systemctl enable --now tlp.service
```
```
sudo systemctl enable --now powertop.service
```

### Git
Add to .gitconfig in your home directory
```
[core]
    pager = delta

[interactive]
    diffFilter = delta --color-only

[delta]
    navigate = true  # use n and N to move between diff sections
    dark = true      # or light = true, or omit for auto-detection

[merge]
    conflictstyle = zdiff3
```
# ИНФОРМАЦИЯ О СИСТЕМЕ
| DISTRO   | [EndeavourOS](https://endeavouros.com/)                        |
| -------- | -------------------------------------------------------------- |
| WM       | [Sway](https://github.com/swaywm/sway)                         |
| BAR      | [Waybar](https://github.com/Alexays/Waybar)                    |
| LAUNCHER | [Wofi](https://man.archlinux.org/man/wofi.1)                   |
| TERMINAL | [Ghostty](https://ghostty.org/)                                |
| SHELL    | [Fish](https://fishshell.com/)                                 |
| ICON     | [WhiteSur icon theme](https://www.gnome-look.org/p/1405756)    |
| GTK3     | [Catppuccine GTK Theme](https://www.gnome-look.org/p/1715554)  |
| CURSORS  | [Bibata Modern Ice](https://www.gnome-look.org/p/1197198)      |
| FONT     | [Mononoki Nerd Font](https://www.nerdfonts.com/font-downloads) |

## ССЫЛКИ

My Telegram: https://t.me/kuberctl
