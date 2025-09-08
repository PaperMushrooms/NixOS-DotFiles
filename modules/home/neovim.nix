{ config, lib, pkgs, ... }:

{
  home.Packages = with pkgs; [
    neovim
  ];
}
