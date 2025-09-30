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
        rev = "0xlk2fsb6fav08lyv1xzvhzid2nmbs6g5sdq57jmyfx1m26agyg3;" # pinned commit
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
