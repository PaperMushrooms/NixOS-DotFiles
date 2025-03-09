{ config, lib, pkgs, ... }: with lib; {

  options = {
    virtualisationconf.enable = 
      mkEnableOption "Enable Virtualisation module for virtual machines";
    };
  };

  config = mkIf config.virtualisation.enable {
    programs.virt-manager.enable = true; 
    users.groups.libvirtd.members = ["nixon"];
    virtualisation.waydroid.enable = true;
    virtualisation.libvirtd.enable = true;
    virtualisation.spiceUSBRedirection.enable = true;
  };
}
