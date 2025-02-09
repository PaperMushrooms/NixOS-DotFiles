{ config, pkgs, ... }:

{
  # Enable the KDE Plasma Desktop Environment.
  services.desktopManager.plasma6.enable = true;

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Exclude GNOME packages from KDE
  environment.plasma6.excludePackages = with pkgs; [
    gnome.gnome-terminal
    gnome.eog
  ];
}
