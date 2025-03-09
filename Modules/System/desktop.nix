{ config, pkgs, ... }:

{
  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # System-wide GNOME packages
   # gnome-shell
   # gnome-control-center
   # gnome-terminal
   # gnome-tweaks  
  ];
  
}
