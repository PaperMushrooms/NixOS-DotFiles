{ pkgs, ... }:

{
  stylix = {

    enable = true;

    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";

    image = ../../wallpapers/catppuccin-mocha/purple-horizon.jpg;
  };
}
