{ pkgs, ... }:

{
  stylix = {

    enable = true;

    autoEnable = true;

    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Modern";
      size = 32;
    };

    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";

    image = ../../wallpapers/catppuccin-mocha/purple-horizon.jpg;
  };
}
