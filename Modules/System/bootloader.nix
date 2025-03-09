{ config, lib, pkgs, ... }: with lib {

  options = {
    grubconf.enable = 
      mkEnableOption "Enable and configure GRUB";
  };


  config = mkIf config.grubconf.enable {
    boot.loader.grub = {
      enable = true;
      devices = [ "nodev" ];
      efiSupport = true;
      useOSProber = true;
     # theme = pkgs.breeze;
    };
  };
