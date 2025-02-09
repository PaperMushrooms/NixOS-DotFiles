#{
#  # boot.loader.systemd-boot.enable = true; # Enable systemd-boot
#    boot.loader.efi.canTouchEfiVariables = true;
#    boot.loader.grub.enable = true; # Enable Grub
#    boot.loader.grub.devices = [ "nodev" ];
#    boot.loader.grub.efiSupport = true;
#    boot.loader.grub.useOSProber = true;
#}

{
  boot.loader.grub = {
      enable = true;
      devices = [ "nodev" ];
      efiSupport = true;
      theme = pkgs.breeze;
  };
}