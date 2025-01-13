{ pkgs, ... }:

{
    # Allow Unfree Packages
    nixpkgs.config.allowUnfree = true;

    # List packages installed in system profile. To search, run: $ nix search wget
    environment.systemPackages = with pkgs; [
        git
        wget
        curl
        gzip
        wineWowPackages.stable
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
