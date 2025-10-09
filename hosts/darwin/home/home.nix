{
  inputs,
  config,
  pkgs,
  lib,
  ...
}: 

{
  imports = [
#   ../../../modules/home/neovim.nix
    ../../../modules/home/git.nix
    ../../../modules/home/zsh.nix
  ];

  myshell.enable = true;

  home.username = lib.mkForce "matthew";
  home.homeDirectory = lib.mkForce "/Users/matthew";
  home.stateVersion = "24.05";

  home.file = {};

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # User Defined Aliases
  programs.zsh = {
    enable = true;
    shellAliases = {
      rebuild = "sudo darwin-rebuild switch --flake /etc/nix-darwin#darwin";
    };
  };

  home.packages = with pkgs; [
  ];

  nixpkgs.config = {
    allowUnfree = true;
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
