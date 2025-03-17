{ config, lib, pkgs, ... }:

with lib; {
  options = {
    plasmahome.enable = mkEnableOption "Enable and Configure Plasma6";
  };

  config = mkIf config.plasmahome.enable {
    # System-level settings
    services.desktopManager.plasma6.enable = true;
    services.displayManager.sddm.enable = true;
    services.xserver.enable = true;

    # Only apply this block if Home Manager is enabled
    home-manager.users = mkIf (config ? home-manager) {
      "${if config ? home.username then config.home.username else "yourUsername"}" = {
        programs.plasma = {
          enable = true;
          workspace = {
            colorScheme = "BreezeDark"; # Enables dark mode
            windowDecorations = {
              library = "org.kde.breeze";
              theme = "Breeze";
            };
            splashScreen = {
              theme = "None";
            };
            theme = "BreezeDark";
            cursor = {
              theme = "Breeze";
            };
          };
        };
      };
    };
  };
}
