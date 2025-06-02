# Refactored README.md


# Sway Catppuccin Configuration

![Sway Desktop Preview](/Pictures/swappy-20250422_125704.png)

## Installation

Clone this repository:
```bash
git clone https://github.com/37signalsS/sway.git
```
Copy all files to `~/.config`

## Software Installation

### Core Packages
```bash
sudo pacman -S \
  swaybg gammastep swaylock swappy xorg-xwayland wl-clipboard cliphist autotiling \
  nwg-look wlroots xdg-user-dirs slurp grim swaync waybar wofi xdg-desktop-portal-wlr \
  telegram-desktop nemo ghostty libreoffice tailscale yazi haruna pavucontrol obs-studio \
  gthumb htop bat fd zoxide fzf micro fish wireguard-tools gvfs jq unzip p7zip \
  fastfetch cmus docker docker-compose polkit-gnome thefuck kolourpaint keepassxc \
  libreoffice-still-ru virtualbox scrcpy android-tools eza git-delta atuin lazygit \
  bluez bluez-utils blueman syncthing yt-dlp fragments kdeconnect network-manager-applet \
  nm-connection-editor power-profiles-daemon dive translate-shell flatpak zed \
  linux-zen linux-zen-headers
```

### AUR Packages 
```bash
yay -S \
  discord-canary vesktop zen-browser-bin onlyoffice-bin youtube-music-bin \
  lens-bin lazydocker pomatez ttf-times-new-roman vscodium-bin ungoogled-chromium-bin \
  termius
```

### Additional Software
- [Warp Terminal](https://app.warp.dev/get_warp)
  ```bash
  sudo pacman -U ./<filename>.pkg.tar.zst
  ```
  
- [WaveTerm](https://www.waveterm.dev/download)
  ```bash
  sudo pacman -U <filename>
  ```
  
- FreeLens (via Flatpak)
  ```bash
  flatpak install flathub app.freelens.Freelens
  ```

## Configuration

### Neovim
```bash
export EDITOR=nvim
```

### VS Code
Set `restoreWindows` to `none` in settings.

### Terminal Setup
1. Install Starship prompt:
   ```bash
   curl -sS https://starship.rs/install.sh | sh
   ```
2. Set Fish as default shell:
   ```bash
   chsh -s /usr/bin/fish
   ```

### Rofi Configuration
To remove specific applications from appearing in Rofi, delete their `.desktop` files from:
- `~/.local/share/applications`
- `/usr/share/applications`

### Default Applications
1. View system MIME types:
   ```bash
   cat /etc/mime.types
   ```
2. Create custom MIME type (e.g., for Markdown):
   ```bash
   mkdir -p ~/.local/share/mime/packages
   nano ~/.local/share/mime/packages/markdown.xml
   ```
   ```xml
   <?xml version="1.0" encoding="UTF-8"?>
   <mime-info xmlns="http://www.freedesktop.org/standards/shared-mime-info">
       <mime-type type="text/markdown">
           <comment>Markdown Document</comment>
           <glob pattern="*.md"/>
           <glob pattern="*.markdown"/>
       </mime-type>
   </mime-info>
   ```
   ```bash
   update-mime-database ~/.local/share/mime
   ```
3. Set default application:
   ```bash
   xdg-mime default dev.zed.Zed.desktop text/plain
   ```
4. Verify default application:
   ```bash
   xdg-mime query default text/plain
   ```
5. Reset MIME cache:
   ```bash
   rm -rf ~/.cache/mimeapps.list
   rm -rf ~/.local/share/mime
   update-mime-database ~/.local/share/mime
   ```

### Discord Update Skipping
Add to `~/.config/discord/settings.json`:
```json
{"SKIP_HOST_UPDATE": true}
```

## Power Saving (ThinkPad Specific)
```bash
sudo pacman -S tlp tlp-rdw powertop tp_smapi acpi_call
sudo systemctl mask systemd-rfkill.service && sudo systemctl mask systemd-rfkill.socket
```

Configure TLP:
```bash
micro /etc/tlp.conf
```

Create Powertop service:
```bash
micro /etc/systemd/system/powertop.service
```
```ini
[Unit]
Description=Powertop tunings

[Service]
Type=oneshot
RemainAfterExit=yes
ExecStart=/usr/bin/powertop --auto-tune

[Install]
WantedBy=multi-user.target
```

Enable services:
```bash
sudo systemctl enable --now tlp.service
sudo systemctl enable --now powertop.service
```

## System Information

| Component       | Details                                                                 |
|-----------------|-------------------------------------------------------------------------|
| Distribution    | [EndeavourOS](https://endeavouros.com/)                                 |
| Window Manager  | [Sway](https://github.com/swaywm/sway)                                  |
| Status Bar      | [Waybar](https://github.com/Alexays/Waybar)                             |
| Application Launcher | [Wofi](https://man.archlinux.org/man/wofi.1)                        |
| Terminal        | [Ghostty](https://ghostty.org/)                                         |
| Shell           | [Fish](https://fishshell.com/)                                          |
| Icon Theme      | [WhiteSur icon theme](https://www.gnome-look.org/p/1405756)             |
| GTK3 Theme      | [Catppuccin GTK Theme](https://www.gnome-look.org/p/1715554)            |
| Cursor Theme    | [Bibata Modern Ice](https://www.gnome-look.org/p/1197198)               |
| Font            | [Mononoki Nerd Font](https://www.nerdfonts.com/font-downloads)          |

## Contact

My Telegram: [@kuberctl](https://t.me/kuberctl)
