{ config, lib, pkgs, ... }:

with lib; {
  options = {
    plasmahome.enable = mkEnableOption "Enable and Configure Plasma6";
  };

  config = mkIf config.plasmahome.enable {
    services.desktopManager.plasma6.enable = true;
    services.displayManager.sddm.enable = true;
    services.xserver.enable = true;
  };
}

