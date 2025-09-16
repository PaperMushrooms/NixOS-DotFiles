{ pkgs, ... }:

{
  stylix = {

    enable = true;

    autoEnable = true;

    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 32;
    };

    config.targets = {
      firefox.profileNames = [ " default " ];
    };

    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";

    image = ../../wallpapers/catppuccin-mocha/purple-horizon.jpg;
  };
}
