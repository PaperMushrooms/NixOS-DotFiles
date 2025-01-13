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
	    scrcpy
        networkmanagerapplet
        openrazer-daemon
        polychromatic
        waybar
        rofi-wayland
        swww
        wineWowPackages.stable
        libimobiledevice
        rustdesk
	    anydesk
        vscodium
        vulkan-tools       # Vulkan utilities like vulkaninfo
        vulkan-loader      # Vulkan loader
        mesa               # Open-source AMD drivers
        minicom
    ];
}
