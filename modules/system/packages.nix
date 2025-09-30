{ pkgs, ... }:

{

  # Allow Unfree Packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run: $ nix search wget
  environment.systemPackages = with pkgs; [

    android-studio
    anydesk
    bat
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
    razer-cli
    scrcpy
    wget

    # Wine Packages
    winePackages.full
    winetricks

    (pkgs.qflipper.overrideAttrs (old: {
      version = "1.4.1"; # or latest release
      src = pkgs.fetchurl {
        url = "https://update.flipperzero.one/builds/qFlipper/1.4.1/qFlipper-1.4.1-x86_64.AppImage";
        sha256 = "sha256-of-latest"; # need nix-prefetch-url for this
      };
    }))
  ];


  # Inside configuration.nix or your flake's module
  services.udev.extraRules = ''
    # Flipper Zero DFU Mode
    SUBSYSTEM=="usb", ATTR{idVendor}=="0483", ATTR{idProduct}=="df11", MODE="0666", GROUP="dialout"

    # Flipper Zero Serial Mode
    SUBSYSTEM=="usb", ATTR{idVendor}=="0483", ATTR{idProduct}=="5740", MODE="0666", GROUP="dialout"
  '';

}
