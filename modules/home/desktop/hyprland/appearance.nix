{
  wayland.windowManager.hyprland.settings = {
    general = {
      border_size = 3;
      gaps_in = 5;
      gaps_out = 15;
      col.active_border = "rgb(89b4fa)";
      col.inactive_border = "rgb(1e1e2e)";
      layout = "dwindle"; # or master, or others
    };

    decoration = {
      rounding = 10;
      blur = {
        enabled = true;
        size = 8;
        passes = 3;
      };
      drop_shadow = true;
      shadow_range = 20;
      shadow_render_power = 3;
      col.shadow = "rgba(00000099)";
    };
  };
}

