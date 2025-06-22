{ config, lib, pkgs, ... }: with lib; {

  options = {
    bootloader.enable =
      mkEnableOption "Enable and configure bootloader";
  };


  config = mkIf config.bootloader.enable {
    boot.loader.grub = {
      enable = true;
      devices = [ "/dev/nvme0n1p1" ];
      efiSupport = true;
      useOSProber = true;
      # theme = pkgs.breeze;
    };
  };
}
