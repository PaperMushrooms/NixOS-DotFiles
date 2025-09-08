{ config, lib, pkgs, ... }:

{
  environment.homePackages = with pkgs; [
    neovim
  ];
}
