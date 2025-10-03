{ inputs, config, pkgs, lib, ... }:

{

  imports = [
    ../../../modules/home/zsh.nix
    ../../../modules/home/neovim.nix
  ];

  home.username = lib.mkForce "matthew";
  home.homeDirectory = lib.mkForce "/Users/matthew";
  home.stateVersion = "24.05";

  home.file = { };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # User Defined Aliases
  programs.zsh = {
    shellAliases = {
      rebuild = "sudo darwin-rebuild switch --flake /etc/nix-darwin#darwin";
    };
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
