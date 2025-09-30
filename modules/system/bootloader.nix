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

      # Fetch a specific commit from HyperFluent repo
      src = builtins.fetchGit {
        url = "https://github.com/Coopydood/HyperFluent-GRUB-Theme.git";
        rev = "03ddcc3f540a91e96013d622b07e6eb2316e5f08"; # pinned commit
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
