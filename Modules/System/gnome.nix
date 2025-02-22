{ config, pkgs, ... }:

{
  # Enable GNOME Desktop Environment.
  services.xserver.desktopManager.gnome.enable = true;

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # System-wide GNOME packages
  environment.systemPackages = with pkgs; [
    gnome-shell
    gnome-control-center
    gnome-tweaks
  ];
}