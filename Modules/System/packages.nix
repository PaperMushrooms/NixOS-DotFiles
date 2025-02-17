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

	# Wine Packages
	winePackages.full
        winetricks

	scrcpy
        networkmanagerapplet
        openrazer-daemon
        unstable.polychromatic
	razer-cli
	libimobiledevice
        rustdesk
	anydesk
        vscodium
    ];
}
