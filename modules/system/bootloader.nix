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

      src = pkgs.fetchzip {
        url = "https://github.com/Coopydood/HyperFluent-GRUB-Theme/archive/refs/heads/main.zip";
        sha256 = "l6oZqo6ATv9DWUKAe3fgx3c12SOX0qaqfwd3ppcdUZk=";
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
