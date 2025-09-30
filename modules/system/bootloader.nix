{ config, lib, pkgs, ... }:

{
  boot.loader.grub = {
    enable = true;
    devices = [ "nodev" ];
    efiSupport = true;
    useOSProber = true;
    theme = ./../grub-themes/HyperFluent;
  };

  boot.loader.efi = {
    canTouchEfiVariables = true; # write boot entry into firmware NVRAM
    efiSysMountPoint = "/boot"; # → make sure your ESP is mounted here
  };
}
