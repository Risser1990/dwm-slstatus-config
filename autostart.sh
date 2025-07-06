#!/bin/bash

# Monitor Configuration
xrandr --output DP-2 --primary --mode 2560x1440 --rate 239.97 --auto
xrandr --output DP-0 --mode 2560x1440 --rate 164.96 --left-of DP-2 --auto

# Disable screen blanking and power saving
xset s off -dpms &
  
# Notification daemon
dunst &

# Polkit agent for authentication dialogs
/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &

# Start slstatus in the background
slstatus &

protonmail-bridge --no-window &

# Start slstatus in the background
slstatus &

# Compositor and wallpaper
picom --config ~/.config/picom/picom.conf &
feh --bg-scale ~/Pictures/Wallpapers/mtg1.jpg &

# System tray apps
copyq &
flameshot &
steam -silent &
1password --silent &
(sleep 5; birdtray) &
(pamixer --set-volume 50) &
pasystray &
(sleep 5; birdtray) &



