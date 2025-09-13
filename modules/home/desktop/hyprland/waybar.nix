{ config, pkgs, ... }:

{
  programs.waybar = {
    enable = true;

    settings = {
      mainBar = {
        layer = "top";
        position = "top";

        battery = {
          format = "{capacity}% {icon}";
        };

        modules-left = [ "hyprland/workspaces" ];

        modules-center = [ "clock" ];

        modules-right = [
          "tray"
          "pulseaudio"
          "battery"
        ];

        clock = {
          format = "{:%I:%M %p}";
        };
      };
    };
  };
}
