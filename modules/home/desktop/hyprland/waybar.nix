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
          format-icons = [ "" "" "" "" "" ];
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

    fonts.packages = with pkgs; [
      font-awesome
      font-awesome_4
      font-awesome_5
      font-awesome_6
      font-awesome_7
    ];
  }
