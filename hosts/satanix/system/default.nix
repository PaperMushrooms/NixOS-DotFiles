{ inputs, config, pkgs, lib, ... }: 

{
  imports = [
    ./hardware-configuration.nix
    ../../../modules/nixos/system
  ];

  # Set the hostname.
  networking.hostName = "satanix"; # Define your hostname.
}
