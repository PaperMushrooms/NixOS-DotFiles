{ config, lib, pkgs, ... }:
with lib; {
  options = {
    displaymanager.enable = mkEnableOption "Enable and Configure Display Manager";
  };

  config = mkIf config.displaymanager.enable {
   services.displayManager.sddm = { enable = true; };
  };
}
