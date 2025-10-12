{ inputs, config, pkgs, lib, ... }: 

{
  imports = [
    ./hardware-configuration.nix
    ../../../modules/nixos/system
  ];

  # Set the hostname.
  networking.hostName = "nixspawn"; # Define your hostname.
}
