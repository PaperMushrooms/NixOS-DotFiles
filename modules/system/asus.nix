{
  options = {
    asus.enable =
      mkEnableOption "Enable ASUS plugins";
  };

  config = mkIf config.gaming.enable {
    services = {
      asusd = {
        enable = true;
        enableUserService = true;
      };

      supergfxd.enable = true;
    };
  };
}
