{ pkgs, ... }:

 {  

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

    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    # Set Git commit hash for darwin-version.
    system = { 
      configurationRevision = null;
      stateVersion = 6;
    };
}
