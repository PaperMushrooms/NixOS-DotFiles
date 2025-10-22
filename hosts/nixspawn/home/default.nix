{ inputs, config, pkgs, lib, ... }: {
  imports = [
    ./home-options.nix
    ../../../modules/nixos/home
  ];

  home.username = "dex";
  home.homeDirectory = "/home/dex";
  home.stateVersion = "24.05";
}
