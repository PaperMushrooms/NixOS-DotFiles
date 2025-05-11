{ config, pkgs, ... }:

{
  programs.waybar = {
    enable = true;

    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        modules-left = [ "hyprland/workspaces" ];
        modules-center = [ "clock" ];
        modules-right = [ "tray" "battery" "pulseaudio" ];
        clock = {
          format = "{:%I:%M %p}";
        };
      };
    };
  };
}
