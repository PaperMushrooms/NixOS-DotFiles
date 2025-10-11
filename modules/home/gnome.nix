{ config
, lib
, pkgs
, ...
}:
with lib; {
  options = {
    gnomehome.enable =
      mkEnableOption "Enable Gnome Home-Manager configuration";
  };

  config = mkIf config.gnomehome.enable {
    #    # Enable Dark Mode for GNOME
    #    dconf.settings = {
    #      "org/gnome/desktop/interface" = {
    #        color-scheme = lib.mkDefault "prefer-dark";
    #        gtk-theme = lib.mkDefault "Adwaita-dark";
    #      };
  };
}
