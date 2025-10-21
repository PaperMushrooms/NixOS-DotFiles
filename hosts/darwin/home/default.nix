{ inputs, config, pkgs, lib, ... }: {
  imports = [
    ./home-options.nix
  ];

  home.username = "matthew";
  home.homeDirectory = "/Users/matthew/";
  home.stateVersion = "24.05";

  home.file = { };

  home.sessionVariables = { EDITOR = "nvim"; };

  # User Defined Aliases
  programs.zsh = {
    enable = true;
    shellAliases = {
      rebuild = "sudo darwin-rebuild switch --flake /etc/nix-darwin#darwin";
      hellnix-update = "cd /etc/nix-darwin && sudo nix flake update && upload && sudo darwin-rebuild switch --flake .#darwin && ssh -t satanix 'cd /etc/nixos/ && git pull && sudo nixos-rebuild switch --flake .#satanix' && ssh -t nixspawn 'cd /etc/nixos && git pull && sudo nixos-rebuild switch --flake .#nixspawn'";

hellnix-push = "cd /etc/nix-darwin && upload && sudo darwin-rebuild switch --flake .#darwin && ssh -t satanix 'cd /etc/nixos/ && git pull && sudo nixos-rebuild switch --flake .#satanix' && ssh -t nixspawn 'cd /etc/nixos && git pull && sudo nixos-rebuild switch --flake .#nixspawn'";

      hellnix-sync = "cd /etc/nix-darwin && git pull && sudo darwin-rebuild switch --flake .#darwin && ssh -t satanix 'cd /etc/nixos/ && git pull && sudo nixos-rebuild switch --flake .#satanix' && ssh -t nixspawn 'cd /etc/nixos && git pull && sudo nixos-rebuild switch --flake .#nixspawn'";

      hellnix-cleanup = "cleanup-full && ssh -t satanix 'sudo nix-collect-garbage -d' && ssh -t nixspawn 'sudo nix-collect-garbage -d'";
    };
  };

  home.packages = with pkgs; [

  ];

  nixpkgs.config = { allowUnfree = true; };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
