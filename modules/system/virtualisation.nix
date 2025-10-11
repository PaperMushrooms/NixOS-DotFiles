{ config
, lib
, pkgs
, ...
}:
with lib; {
  options = {
    virtualisationconf.enable =
      mkEnableOption "Enable Virtualisation module for virtual machines";
  };

  config = mkIf config.virtualisationconf.enable {
    programs.virt-manager.enable = true;
    users.groups.libvirtd.members = [ "tuffy" "jealousy" ];
    virtualisation.waydroid.enable = true;
    virtualisation.libvirtd.enable = true;
    virtualisation.spiceUSBRedirection.enable = true;
  };
}
