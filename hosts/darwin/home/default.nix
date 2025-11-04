{ inputs, config, pkgs, lib, ... }: {
  imports = [
    ./home-options.nix
  ];

  home.username = "matthew";
  home.homeDirectory = "/Users/matthew";
  home.stateVersion = "24.05";

  home.file = { };

  home.sessionVariables = { EDITOR = "nvim"; };

  # User Defined Aliases
  programs.zsh = {
    enable = true;
    shellAliases = {
      rebuild = "sudo darwin-rebuild switch --flake /etc/nix-darwin#darwin";
      hellnix-update = "cd /etc/nix-darwin && nix flake update && upload && sudo darwin-rebuild switch --flake .#darwin && ssh -t alienix 'cd /etc/nixos/ && git pull && sudo nixos-rebuild switch --flake .#alienix' && ssh -t drone 'cd /etc/nixos && git pull && sudo nixos-rebuild switch --flake .#drone'";

      hellnix-push = "cd /etc/nix-darwin && upload && sudo darwin-rebuild switch --flake .#darwin && ssh -t alienix 'cd /etc/nixos/ && git pull && sudo nixos-rebuild switch --flake .#alienix' && ssh -t drone 'cd /etc/nixos && git pull && sudo nixos-rebuild switch --flake .#drone'";

      hellnix-sync = "cd /etc/nix-darwin && git pull && sudo darwin-rebuild switch --flake .#darwin && ssh -t alienix 'cd /etc/nixos/ && git pull && sudo nixos-rebuild switch --flake .#alienix' && ssh -t drone 'cd /etc/nixos && git pull && sudo nixos-rebuild switch --flake .#drone'";

      hellnix-cleanup = "cleanup-full && ssh -t alienix 'sudo nix-collect-garbage -d' && ssh -t drone 'sudo nix-collect-garbage -d'";
    };
  };

  home.packages = with pkgs; [

  ];

  nixpkgs.config = { allowUnfree = true; };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
