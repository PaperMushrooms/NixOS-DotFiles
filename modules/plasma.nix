{ config, lib, pkgs, ... }: with lib; {

  options = {
    plasmahome.enable =
      mkEnableOption "Enable and Configure Plasma6";

  # Enable the KDE Plasma Desktop Environment.
  services.desktopManager.plasma6.enable = true;

  services.displayManager.sddm.enable = true;

  # Enable the X11 windowing system.
  services.xserver.enable = true;
  };

  config = mkIf config.plasmahome.enable { 
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

    services.desktopManager.plasma6.enable = true;
    services.displayManager.sddm.enable = true;
    services.xserver.enable = true;

  };
}




}
