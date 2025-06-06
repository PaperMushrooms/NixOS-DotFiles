{ pkgs, ... }:

{

  services = {
    asusd = {
      enable = true;
      enableUserService = true;
    };

    supergfxd.enable = true;
  };

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

    android-studio

    asusctl
    supergfxctl

    scrcpy
    networkmanagerapplet
    openrazer-daemon
    polychromatic
    razer-cli
    libimobiledevice
    anydesk
    rustdesk
    freecad
  ];
}
