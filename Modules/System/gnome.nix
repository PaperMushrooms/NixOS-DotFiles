{ config, lib, pkgs, ... }: with lib; {
  
  options = {
    gnomeconf.enable = 
      mkEnableOption "Enable Gnome desktop environment";
  };

  config = mkIf config.gnomesys.enable {
    # Enable GNOME Desktop Environment.
    services.xserver.desktopManager.gnome.enable = true;
  
    # Enable the X11 windowing system.
    services.xserver.enable = true;
  
    # System-wide GNOME packages
    environment.systemPackages = with pkgs; [
      gnome-shell
      gnome-control-center
      gnome-tweaks
    ];
  };
}
