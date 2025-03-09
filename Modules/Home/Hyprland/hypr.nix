{ config, lib, pkgs, ... }: with lib; {


  options {
    hyprconf.enable =
      mkEnableOption "Enable and configure Hyprland for the system.";
  };

  config = mkIf config.hyprconf.enable {

    # Enable the Hyprland Window Manager
    programs.hyprland.enable = true; 
    
  };


}
