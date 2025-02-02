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
}
