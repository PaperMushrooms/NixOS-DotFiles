{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.virtualisation;
in {
  options = {
    virtualisation = mkEnableOption "Enable Virtualisation module for virtual machines";
  };

  config = mkIf cfg {
    programs.virt-manager.enable = true; 
    users.groups.libvirtd.members = ["nixon"];
    virtualisation.libvirtd.enable = true;
    virtualisation.spiceUSBRedirection.enable = true;
  };
}
