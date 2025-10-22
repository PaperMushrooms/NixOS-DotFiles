{ inputs, config, lib, ... }: {
  stylix.targets = {
    kde.enable = false;
    kde.decorations.enable = false;
    firefox.profileNames = [ "default" ];
  };
}
