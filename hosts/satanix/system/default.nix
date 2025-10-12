{ inputs, config, pkgs, lib, ... }: 

{
  imports = [
    ./hardware-configuration.nix
    ../../../modules/nixos/system
  ];

  # Set the hostname.
  networking.hostName = "satanix"; # Define your hostname.

  users.users.dex = {
    isNormalUser = true;
    description = "dexalyth";
    extraGroups =
      [ "networkmanager" "wheel" "adbusers" "openrazer" "usbmuxd" "dialout" ];
    shell = pkgs.zsh;
  };
}
