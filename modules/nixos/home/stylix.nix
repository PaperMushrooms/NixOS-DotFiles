{ inputs, config, lib, ... }: {
  stylix.targets = {
    kde.enable = false;
    kde.decorations.enable = false;
    gtk.enable = false;
    qt.enable = false;
    firefox.profileNames = [ "default" ];
  };
}
