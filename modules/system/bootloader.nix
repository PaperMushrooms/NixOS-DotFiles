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
        url = "https://github.com/Coopydood/HyperFluent-GRUB-Theme.git";
        rev = "main"; # Or specify a specific commit hash if desired
      };
      installPhase = ''
        mkdir -p $out
        cp -r HyperFluent $out/
      '';
    };
  };

  boot.loader.efi = {
    canTouchEfiVariables = true; # write boot entry into firmware NVRAM
    efiSysMountPoint = "/boot"; # → make sure your ESP is mounted here
  };
}
