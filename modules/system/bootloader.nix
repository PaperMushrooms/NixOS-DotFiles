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

      src = builtins.fetchGit {
        url = "https://github.com/Coopydood/HyperFluent-GRUB-Theme/tree/main/linux-generic.git";
        rev = "0ryvawxxkqvbgsfm14gbr1kilw966rh2dsb82ixpv4534sb8vpmx";
      };

      installPhase = ''
        mkdir -p $out
        cp -r HyperFluent $out/
      '';
    };
  };

  boot.loader.efi = {
    canTouchEfiVariables = true;
    efiSysMountPoint = "/boot";
  };
}
