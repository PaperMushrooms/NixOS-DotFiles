{pkgs, ...}: {
   
  imports = [
  
  ];

  environment.systemPackages = with pkgs; [
    discord
  ];

  nixpkgs.config = {
    hostPlatform = "aarch64-darwin";
    allowUnfree = true;
    allowUnsupportedSystem = false;
  };

  security.pam.services.sudo_local.touchIdAuth = true;

  nix.settings.experimental-features = ["nix-command" "flakes"];

  homebrew = {
    enable = true;
    casks = [
      "rustdesk"
      "qflipper"
      "bambu-studio"
    ];
  };

  # Set Git commit hash for darwin-version.
  system = {
    primaryUser = "matthew";
    configurationRevision = null;
    stateVersion = 6;
  };
}
