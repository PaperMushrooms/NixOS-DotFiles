{ config, lib, pkgs, ... }: with lib; {

  options = {
    gnomehome.enable =
      mkEnableOption "Enable Gnome Home-Manager configuration";
  };

  config = mkIf config.gnomehome.enable = true;
    # Enable Dark Mode for GNOME
    dconf.settings = {
      "org/gnome/desktop/interface" = {
        color-scheme = "prefer-dark";
        gtk-theme = "Adwaita-dark";
      };
    };
}
