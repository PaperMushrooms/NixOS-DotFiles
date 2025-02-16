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
        neovim
        gzip
        gparted
        wineWowPackages.stable
        winetricks
	scrcpy
        networkmanagerapplet
        openrazer-daemon
        polychromatic
	razer-cli
	libimobiledevice
        rustdesk
	anydesk
        vscodium
    ];
}
