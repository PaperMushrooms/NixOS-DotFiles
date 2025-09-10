#!/usr/bin/env bash

# Wallpaper Startup
swww-daemon &
swww img ../../../../wallpapers/cubone.jpg &

# Network-Manager Startup
nm-applet --indicator &

# Waybar Startup
waybar &

dunst
