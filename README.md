# SWAY CATPPUCCIN 

![Sway](/Pictures/swappy-20250422_125704.png)

## УСТАНОВКА ЭТОГО КОНФИГА

Клонировать репозиторий:
```
git clone https://github.com/37signalsS/sway.git
```
Cкопировать все в ~/.config

## Software
```
sudo pacman -S swaybg gammastep swaylock swappy xorg-xwayland wl-clipboard cliphist autotiling nwg-look wlroots xdg-user-dirs slurp grim swaync waybar wofi xdg-desktop-porlal-wlr telegram-desktop nemo ghostty libreoffice tailscale yazi haruna pavucontrol obs-studio gthumb htop bat fd zoxide fzf micro fish wireguard-tools gvfs jq unzip p7zip fastfetch cmus docker docker-compose polkit-gnome thefuck kolourpaint keepassxc libreoffice-still-ru virtualbox scrcpy android-tools eza git-delta atuin lazygit bluez bluez-utils blueman syncthing yt-dlp fragments kdeconnect network-manager-applet nm-connection-editor power-profiles-daemon dive translate-shell p7zip flatpak zed linux-zen linux-zen-headers 
```
```
yay -S discord-canary vesktop zen-browser-bin onlyoffice-bin youtube-music-bin lens-bin lazydocker pomatez ttf-times-new-roman vscodium-bin ungoogled-chromium-bin termius
```
```
https://app.warp.dev/get_warp
sudo pacman -U ./<имя_файла>.pkg.tar.zst

https://www.waveterm.dev/download
sudo pacman -U <имя_файла>

flatpak install flathub app.freelens.Freelens
```
### Neovim
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
### Rofi 
Удалить определенные приложения из вывода (удалить .desktop файл)
```
~/local/share/applications
/usr/share/applications
```
### Default application
Просмотреть существующие в системе MIME-типы:
```
cat /etc/mime.types
```
Создать пользовательский MIME-тип:
```
mkdir -p ~/.local/share/mime/packages
nano ~/.local/share/mime/packages/markdown.xml
```
```
<?xml version="1.0" encoding="UTF-8"?>
<mime-info xmlns="http://www.freedesktop.org/standards/shared-mime-info">
    <mime-type type="text/markdown">
        <comment>Markdown Document</comment>
        <glob pattern="*.md"/>
        <glob pattern="*.markdown"/>
    </mime-type>
</mime-info>
```
```
update-mime-database ~/.local/share/mime
```
Выбрать определенный .desktop файл/приложение для открытия файлов определенного MIMI-типа:
```
xdg-mime default dev.zed.Zed.desktop text/plain
```
Проверить дефолтный выбор приложения для открытия файла:
```
xdg-mime query default text/plain
```
Сбросить кэш и обновить MIME-типы:
```
rm -rf ~/.cache/mimeapps.list
rm -rf ~/.local/share/mime
update-mime-database ~/.local/share/mime
```
### Skip Discord Update
Add to .config/discord/settings.jso
```
{"SKIP_HOST_UPDATE": true}
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
