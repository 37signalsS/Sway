#!/bin/bash

entries="⇠ Logout\n⏾ Suspend\n󰜉 Reboot\n⏻ Shutdown"

selected=$(echo -e $entries|wofi -c ~/.config/wofi/power -s ~/.config/wofi/power.css  -x 2170 -y 10 --height 150 --width 80 --dmenu --cache-file /dev/null --hide-scroll | awk '{print tolower($2)}')

case $selected in
  logout)
    swaymsg exit;;
  suspend)
    exec swaylock -f -C ~/.config/swaylock/config &
	sleep 1
    systemctl suspend;;
  reboot)
    exec systemctl reboot;;
  shutdown)
    exec systemctl poweroff -i;;
esac
