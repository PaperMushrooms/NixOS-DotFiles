{ inputs, config, pkgs, lib, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  # Set the hostname.
  networking.hostName = "nixspawn";
}
