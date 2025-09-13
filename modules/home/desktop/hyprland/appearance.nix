{
  wayland.windowManager.hyprland.settings = {
    general = {
      border_size = 3;
      gaps_in = 5;
      gaps_out = 15;
      layout = "dwindle"; # or master, or others

      resize_on_border = true;
    };

    decoration = {
      rounding = 15;
      active_opacity = 0.75;
      inactive_opacity = 0.8;
      fullscreen_opacity = 100;

      blur = {
        enabled = true;
        xray = true;
        special = false;
        new_optimizations = true;
        size = 14;
        passes = 4;
        brightness = 1;
        noise = 0.01;
        contrast = 1;
        popups = true;
        popups_ignorealpha = 0.6;
        ignore_opacity = false;
      };
    };
  };
}

