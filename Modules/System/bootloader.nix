{ pkgs, ... }:
{
  boot.loader.grub = {
      enable = true;
      devices = [ "nodev" ];
      efiSupport = true;
      useOSProber = true;
     # theme = pkgs.breeze;
  };
}