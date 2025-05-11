{
  wayland.windowManager.hyprland.settings = {
    general = {
      border_size = 3;
      gaps_in = 5;
      gaps_out = 15;
      layout = "dwindle"; # or master, or others
    };

    decoration = {
      rounding = 10;
      blur = {
        enabled = true;
        size = 8;
        passes = 3;
      };
    };
  };
}

