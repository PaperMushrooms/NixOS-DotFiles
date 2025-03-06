{ inputs, config, pkgs, lib, ... }:

{

  imports = [ 

    # Include Hardware Config
    ./hardware-configuration.nix

    # Include Locale Configuration
    ../Modules/System/locales.nix

    # Include System/Bootloader Configuration
    ../Modules/System/bootloader.nix
    
    # Include System/Desktop Environment Configuration
    ../Modules/System/desktop.nix

    # Include Sound Configuration
    ../Modules/System/audio.nix

    # Include System Packages
    ../Modules/System/packages.nix

    # Include Custom Android Scripts
    ../Modules/System/android.nix

    # Include Plasma Config
    ../Modules/System/plasma.nix

  ];

  # Set your time zone.
  time.timeZone = "America/Detroit";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
    };

  # Enabling Flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Set the hostname.
  networking.hostName = "nixos"; # Define your hostname.

  # Enable networking
  networking.networkmanager = {
    enable = true;
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.nixon = {
    isNormalUser = true;
    description = "nixon";
    extraGroups = [ "networkmanager" "wheel" "adbusers" "openrazer" "usbmuxd" ];
    shell = pkgs.zsh;
  };

  # Enable Razer peripherals
  hardware.openrazer.enable = true;

  # Enable USBmuxd
  services.usbmuxd.enable = true;

  # Enable Bluetooth
  services.blueman.enable = true;
  hardware.bluetooth.enable = true; 
  hardware.bluetooth.powerOnBoot = true;
  
  # Enable Flatpak
  services.flatpak.enable = true;

  # Force Plasma SSh Keypass Instead of GNOME
  programs.ssh.askPassword = lib.mkForce "/nix/store/awb6dzl5kcwi2910frjcw0b96988fp2b-ksshaskpass-6.2.4/bin/ksshaskpass";

  # Exclude unneccessary Plasma packages
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    konsole
    oxygen
    kate
  ];

  # Enable dconf
  programs.dconf.enable = true;

  # NixOS Version
  system.stateVersion = "24.05"; # Did you read the comment?

}
