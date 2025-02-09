{ config, pkgs, ...}:

{
  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Enable the Hyprland Window Manager.
  programs.hyprland.enable = true;

  # Enable the KDE Plasma Desktop Environment.
  services.desktopManager.plasma6.enable = true;

  # Enable SDDM Lockscreen Desktop Environment.
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.settings = {
  #  Theme = {
  #    Current = "breeze-dark";
  #  };
  };

  # Enable GNOME Desktop Environment.
  # services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # System-wide Desktop packages
  environment.systemPackages = with pkgs; [
    waybar
    rofi-wayland
    swww
    networkmanagerapplet

  # System-wide GNOME packages
    gnome-shell
    gnome-control-center
    gnome-terminal
    gnome-tweaks  
  ];
  
  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;
}
