{ pkgs, ... }:

{
  # boot.loader.systemd-boot.enable = true; # Enable systemd-boot
  boot.loader.efi.canTouchEfiVariables = true;

  # Enable and Configure Grub
  boot.loader.grub = {
      enable = true;
      devices = [ "nodev" ];
      efiSupport = true;
      theme = pkgs.breeze-grub;
  };
}