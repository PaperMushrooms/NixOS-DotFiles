{ config, pkgs, ...}:

{
  # Enable the Hyprland Window Manager.
  programs.hyprland.enable = true;

  # Hyprland Configuration
  wayland.windowManager.hyprland = {
    enable = true;

    settings = {

    # Monitor(s) Configuration
      monitor = [
	  "eDP-1, 1920x1200@60, 0x0, 1"
      ];
    };
  };
}
