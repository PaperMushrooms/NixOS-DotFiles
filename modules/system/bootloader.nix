{ config, lib, pkgs, ... }: with lib; {


  boot.loader.grub = {
    enable = true;
    devices = [ "nodev" ];
    efiSupport = true;
    useOSProber = true;
  };

  boot.loader.efi = {
    canTouchEfiVariables = true; # write boot entry into firmware NVRAM
    efiSysMountPoint = "/boot"; # → make sure your ESP is mounted here
  };

  theme = /home/jealousy/HyperFluent
    }
