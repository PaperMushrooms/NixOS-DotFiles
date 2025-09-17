{ pkgs, ... }:

{

  # Allow Unfree Packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run: $ nix search wget
  environment.systemPackages = with pkgs; [

    android-studio
    anydesk
    curl
    fastfetch
    freecad
    git
    git-lfs
    gparted
    gzip
    libimobiledevice
    lolcat
    networkmanagerapplet
    openrazer-daemon
    polychromatic
    razer-cli
    rustdesk
    scrcpy
    wget

    # Wine Packages
    winePackages.full
    winetricks
  ];
}
