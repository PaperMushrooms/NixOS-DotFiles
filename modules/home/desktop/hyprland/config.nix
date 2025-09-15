{ config, lib, pkgs, ... }: with lib; {


  imports = [
    ./monitors.nix
    ./keybindings.nix
    ./appearance.nix
    ./waybar.nix
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
        exec-once = [ "bash /etc/nixos/modules/home/desktop/hyprland/start.sh" ];
      };
    };

    # Install extras for better Hyprland user experience
    home.packages = with pkgs; [
      waybar
      rofi
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

