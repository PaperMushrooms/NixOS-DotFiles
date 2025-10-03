{ pkgs, ... }:

 {
          nixpkgs.config.allowUnfree = true;

          nixpkgs.config.allowUnsupportedSystem = true;

          nix.settings.experimental-features = [ "nix-command" "flakes" ];

          # Set Git commit hash for darwin-version.
          system.configurationRevision = self.rev or self.dirtyRev or null;

          system.stateVersion = 6;

          nixpkgs.hostPlatform = "aarch64-darwin";
}
