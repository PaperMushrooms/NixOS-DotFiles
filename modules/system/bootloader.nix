{ config, lib, pkgs, ... }:

{
  boot.loader.grub = {
    enable = true;
    devices = [ "nodev" ];
    efiSupport = true;
    useOSProber = true;

    theme = pkgs.stdenv.mkDerivation {
      pname = "hyperfluent-grub-theme";
      version = "1.0";

      src = pkgs.fetchurl {
        url = "https://github.com/Coopydood/HyperFluent-GRUB-Theme/archive/refs/heads/main.zip";
        sha256 = "DjMhwuTM0k5gJMCa2LJYlHs90Hbu5hzUgNJXS8spblQ";
      };

      installPhase = ''
        mkdir -p $out
        cp -r HyperFluent-GRUB-Theme-main/linux-generic $out/
      '';
    };
  };

  boot.loader.efi = {
    canTouchEfiVariables = true;
    efiSysMountPoint = "/boot";
  };
}
