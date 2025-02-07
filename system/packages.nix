{ pkgs, ... }:

{
    # Allow Unfree Packages
    nixpkgs.config.allowUnfree = true;

    # List packages installed in system profile. To search, run: $ nix search wget
    environment.systemPackages = with pkgs; [
        git
        git-lfs
        wget
        curl
        gzip
        gparted
        wineWowPackages.stable
        winetricks
        (wineWowPackages.full.override {                 # Wine config  
     	  wineRelease = "staging";                       # for       
     	  mingwSupport = true;                           # Windows compatibility.
   	    })                    
	    scrcpy
        networkmanagerapplet
        openrazer-daemon
        polychromatic
        libimobiledevice
        rustdesk
	    anydesk
        vscodium
    ];

    notion = pkgs.notion-app-enhanced.overrideDerivation (oldAttrs: {
        name = "notion-3.0.0-1";
        src = pkgs.fetchurl {
              url = "https://github.com/aokellermann/notion-repackaged/releases/download/v3.0.0-1/Notion-3.0.0-1.AppImage";
              sha256 = "4ca2dbc3e90e8166037f420d54a7cfe8373e27707fdee999e6458044b66786d0";
        };
    });

}
