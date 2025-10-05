{
  config,
  lib,
  ...
}:
with lib; {
  options = {
    asus.enable =
      mkEnableOption "Enable ASUS plugins";
  };

  config = mkIf config.asus.enable {
    services = {
      asusd = {
        enable = true;
        enableUserService = true;
      };

      supergfxd.enable = true;

      # environment.systemPackages = [ pkgs.asusctl ];
    };
  };
}
