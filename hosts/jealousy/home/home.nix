{ inputs, config, pkgs, lib, ... }:

{

  imports = [
    ./home-options.nix
    ../../../modules/home
    ../../../modules/home/packages.nix
    ../../../modules/home/desktop/hyprland/keybindings.nix
  ];

  home.username = "jealousy";
  home.homeDirectory = "/home/jealousy";
  home.stateVersion = "24.05";

  home.file = { };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # User Defined Aliases
  programs.zsh = {
    shellAliases = {
      rebuild = "cd /etc/nixos/ && sudo nixos-rebuild switch --flake .#jealousy && cd ";
    };
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
