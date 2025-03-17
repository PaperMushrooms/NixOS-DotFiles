{ config, lib, pkgs, ... }: with lib; {

  options = {
    plasmahome.enable =
      mkEnableOption "Enable and Configure Plasma6";
  };

  config = mkIf config.plasmahome.enable {
    # System-level configuration
    services.desktopManager.plasma6.enable = true;
    services.displayManager.sddm.enable = true;
    services.xserver.enable = true;

    # Home-Manager configuration
    home-manager.users.${config.home.username} = mkIf (config ? home-manager) {
      # Configure Plasma Theme
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
  
          cursor= {
            theme = "Breeze";
          };
        };
      };
    };
  };
}

