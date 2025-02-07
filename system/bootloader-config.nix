{ pkgs, ... }:

{
  # boot.loader.systemd-boot.enable = true; # Enable systemd-boot
  boot.loader.efi.canTouchEfiVariables = true;

  # Enable and Configure Grub
  boot.loader.grub = {
      enable = true;
      devices = [ "nodev" ];
      efiSupport = true;
      gfxmodeEfi = "auto";
      theme = pkgs.breez;e-grub;
  };
}