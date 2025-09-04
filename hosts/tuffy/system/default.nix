{ inputs, config, pkgs, lib, ... }:

{

  imports = [

    # Include System Packages
    ./hardware-configuration.nix
    ../../../modules/system/packages.nix

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
  users.users.tuffy = {
    isNormalUser = true;
    description = "tuffy";
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

  #Enable Zsh System-wide
  programs.zsh.enable = true;

  # Force Plasma SSh Keypass Instead of GNOME
  programs.ssh.askPassword = "";

  services.gnome.gcr-ssh-agent.enable = false;

  environment.systemPackages = with pkgs; [
    autopsy
    sleuthkit
    pytest-asyncio
  ];

  # Exclude unneccessary Plasma packages
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    konsole
    oxygen
    kate
  ];

  boot.kernelModules = [ "usbnet" "cdc_ether" ];

  # Enable dconf
  programs.dconf.enable = true;

  # NixOS Version
  system.stateVersion = "24.05"; # Did you read the comment?

}
