{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.System.gnome;
in {
  options = {
    System.gnome = mkOption {
      type = types.bool;
      default = false;
      description = "Enable Gnome desktop environment";
    };  
  };

  config = mkIf cfg {
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
