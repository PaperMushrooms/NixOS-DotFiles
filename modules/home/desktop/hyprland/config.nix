{ config, lib, pkgs, ... }: with lib; {


  imports = [
    ./keybindings.nix
    ./appearance.nix
  ];

  options = {
    hyprhome.enable =
      mkEnableOption "Enable Hyprland Home-Manager settings";
  };


  config = mkIf config.hyprhome.enable {
    # Hyprland Configuration
    wayland.windowManager.hyprland = {
      enable = true;

      settings = {

        monitor = [
          "eDP-1, 1920x1200@60, 0x0, 1"
        ];

        exec-once = [ "bash /etc/nixos/modules/home/desktop/hyprland/start.sh" ];
      };
    };

    # Install extras for better Hyprland user experience
    home.packages = with pkgs; [
      waybar
      rofi-wayland
      dunst
      swww
      networkmanagerapplet
      libnotify
    ];

    programs.kitty = {
      enable = true;
      settings = {
        confirm_os_window_close = "0";
      };
    };
  };
}

