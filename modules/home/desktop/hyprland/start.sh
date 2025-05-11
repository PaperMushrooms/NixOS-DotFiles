#!/usr/bin/env bash

# Wallpaper Startup
swww init &
swww img ../../../../wallpapers/cubone.jpg &

# Network-Manager Startup
nm-applet --indicator &

# Waybar Startup
waybar &

dunst
