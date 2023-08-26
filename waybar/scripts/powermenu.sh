#!/usr/bin/env bash

op=$( echo -e " Poweroff\n Reboot\n Lock\n Logout" | wofi -i --dmenu -c ~/.config/wofi/config_powermenu -s ~/.config/wofi/style_powermenu.css | awk '{print tolower($2)}' )

case $op in 
        poweroff)
                systemctl shutdown
                ;;
        reboot)
                systemctl reboot
                ;;
        lock)
                ~/.config/hypr/scripts/blur-lock.sh
                ;;
        logout)
                loginctl terminate-user $USER
                ;;
esac