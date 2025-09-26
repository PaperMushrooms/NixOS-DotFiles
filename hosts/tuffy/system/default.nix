{ inputs, config, pkgs, lib, ... }:

{

  imports = [

    # Include System Packages
    ./hardware-configuration.nix
    ../../../modules/system/packages.nix

  ];

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

  # Exclude unneccessary Plasma packages
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    konsole
    oxygen
    kate
  ];

  boot.kernelModules = [ "usbnet" "cdc_ether" "rndis_host" ];

  # NixOS Version
  system.stateVersion = "24.05"; # Did you read the comment?

}
