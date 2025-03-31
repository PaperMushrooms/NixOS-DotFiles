{ config, lib, pkgs, ... }: with lib; {


  options = {
    hyprhome.enable = 
      mkEnableOption "Enable Hyprland Home-Manager settings";
  };


  config = mkIf config.hyprhome.enable {
    # Hyprland Configuration
    wayland.windowManager.hyprland = {
      enable = true;

      settings = {

      # Monitor(s) Configuration
        monitor = [
          "eDP-1, 1920x1200@60, 0x0, 1"
        ];
      };
    };

      # Install extras for better Hyprland user experience
    home.packages= with pkgs; [
      waybar
      rofi-wayland
      swww
      networkmanagerapplet
    ];
  };
}

