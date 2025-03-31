{ config, lib, pkgs, ... }: with lib; {

  options = {
    libreoffice.enable =
      mkEnableOption "Enable LibreOffice";
  };

  config = mkIf config.libreoffice.enable {
    environment.systemPackages = with pkgs; [
      libreoffice-qt
      hunspell
    ];
  };
}
