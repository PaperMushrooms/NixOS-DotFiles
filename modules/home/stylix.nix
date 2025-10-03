{ pkgs, ... }:

{
  stylix = {

    enable = true;

    autoEnable = true;

    targets = {
      kde.enable = false;
    };

    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";

  };
}
