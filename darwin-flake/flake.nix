{
  description = "My first nix-darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs }: {
    darwinConfigurations."Matthews-MacBook-Air" = nix-darwin.lib.darwinSystem {
      system = "aarch64-darwin";
      modules = [
        ({ pkgs, ... }: {

          nixpkgs.config.allowUnfree = true;

          nixpkgs.config.allowUnsupportedSystem = true;

          environment.systemPackages = with pkgs; [
            neovim
            git
            discord
            neofetch
            android-tools
            scrcpy
          ];

          nix.settings.experimental-features = [ "nix-command" "flakes" ];

          # Set Git commit hash for darwin-version.
          system.configurationRevision = self.rev or self.dirtyRev or null;

          system.stateVersion = 6;

          nixpkgs.hostPlatform = "aarch64-darwin";
        })
      ];
    };
  };
}

