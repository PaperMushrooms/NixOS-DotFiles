{ pkgs, ... }: {
  # Allow Unfree Packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run: $ nix search wget
  environment.systemPackages = with pkgs; [
    android-studio
    #   rustdesk
    anydesk
    bat
    zip
    unzip
    curl
    fastfetch
    freecad
    git
    git-lfs
    gparted
    gzip
    exfatprogs
    libimobiledevice
    lolcat
    networkmanagerapplet
    openrazer-daemon
    polychromatic
    qFlipper
    razer-cli
    scrcpy
    wget

    # Wine Packages
    winePackages.full
    winetricks
  ];

  # Inside configuration.nix or your flake's module
  services.udev.extraRules = ''
    # Flipper Zero DFU Mode
    SUBSYSTEM=="usb", ATTR{idVendor}=="0483", ATTR{idProduct}=="df11", MODE="0666", GROUP="dialout"

    # Flipper Zero Serial Mode
    SUBSYSTEM=="usb", ATTR{idVendor}=="0483", ATTR{idProduct}=="5740", MODE="0666", GROUP="dialout"
  '';
}
