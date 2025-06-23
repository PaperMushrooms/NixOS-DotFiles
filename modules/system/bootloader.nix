{ config, lib, pkgs, ... }: with lib; {

  options = {
    bootloader.enable =
      mkEnableOption "Enable and configure bootloader";
  };


  config = mkIf config.bootloader.enable {
    boot.loader.grub = {
      enable = true;
      devices = [ " nodev " ];
      efiSupport = true;
      useOSProber = true;

    efi = {
      canTouchEfiVariables = true;    # write boot entry into firmware NVRAM
      efiSysMountPoint     = "/boot"; # → make sure your ESP is mounted here
    };

      # theme = pkgs.breeze;
    };
  };
}
