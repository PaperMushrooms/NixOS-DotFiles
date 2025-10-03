{ inputs, config, pkgs, lib, ... }:

{

  imports = [
    ./home-options.nix
    ../../../modules/home
#   ../../../modules/home/packages.nix
  ];

  home.username = "Darwin";
  home.homeDirectory = "/home/Darwin";
  home.stateVersion = "24.05";

  home.file = { };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # User Defined Aliases
  programs.zsh = {
    shellAliases = {
      rebuild = "sudo darwin-rebuild switch --flake /etc/nix-darwin#Darwin";
    };
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
