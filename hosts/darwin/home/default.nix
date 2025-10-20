{ inputs, config, pkgs, lib, ... }: {
  imports = [
    ../../../modules/nixos/home/neovim.nix
    ../../../modules/nixos/home/git.nix
    ../../../modules/nixos/home/zsh.nix
  ];

  myshell.enable = true;

  home.username = lib.mkForce "matthew";
  home.homeDirectory = lib.mkForce "/Users/matthew";
  home.stateVersion = "24.05";

  home.file = { };

  home.sessionVariables = { EDITOR = "nvim"; };

  # User Defined Aliases
  programs.zsh = {
    enable = true;
    shellAliases = {
      rebuild = "sudo darwin-rebuild switch --flake /etc/nix-darwin#darwin";
      hellnix-update = "cd /etc/nix-darwin && sudo nix flake update && sudo darwin-rebuild switch --flake .#darwin && ssh -t satanix 'cd /etc/nixos/ && git pull && sudo nixos-rebuild switch --flake .#satanix' && ssh -t nixspawn 'cd /etc/nixos && git pull && sudo nixos-rebuild switch --flake .#nixspawn'";
    };
  };

  home.packages = with pkgs; [

  ];

  nixpkgs.config = { allowUnfree = true; };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}

