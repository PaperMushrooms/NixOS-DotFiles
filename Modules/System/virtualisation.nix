{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.System.virtualisation;
in {
  options = {
    System.virtualisation = mkOption {
      type = types.bool;
      default = false;
      description = "Enable Virtualisation module for virtual machines";
    };
  };

  config = mkIf cfg {
    programs.virt-manager.enable = true; 
    users.groups.libvirtd.members = ["nixon"];
    virtualisation.waydroid.enable = true;
    virtualisation.libvirtd.enable = true;
    virtualisation.spiceUSBRedirection.enable = true;
  };
}
