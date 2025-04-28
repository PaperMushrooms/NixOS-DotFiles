{ config, lib, pkgs, ... }: with lib; {

  options = {
    hyprconf.enable =
      mkEnableOption "Enable and configure Hyprland for the system.";
  };

  config = mkIf config.hyprconf.enable {
    
    programs.hyprland = { 
      enable = true; 
      xwayland.enable = true;
    };

    hardware.graphics.enable = true;

    xdg.portal.enable = true;

  };

}
