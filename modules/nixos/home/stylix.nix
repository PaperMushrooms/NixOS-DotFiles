{ inputs, config, lib, ... }: {
  stylix.targets.kde = {
    enable = false;
    decorations.enable = false;
  };
}
