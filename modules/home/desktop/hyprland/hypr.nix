{ config, lib, pkgs, ... }: with lib; {


  options = {
    hyprconf.enable =
      mkEnableOption "Enable and configure Hyprland for the system.";
  };

  config = mkIf config.hyprconf.enable {

    # Enable the Hyprland Window Manager
    programs.hyprland = { 
      enable = true; 
      xwayland.enable = true;
    };

    hardware = {
      opengl.enable = true;
    };

    environment.systemPackages = with pkgs; {
      waybar
      rofi
      dunst
      libnotify
      swww
    };

    xdg.portal.enable = true;
    xdg.portal.extraPortals = [ pkgs.xdg.desktop-portal-gtk ];

  };

}
