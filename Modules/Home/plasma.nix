{ config, lib, pkgs, ... }: with lib; {

  options = {
    plasma.enable = 
      mkEnableOption "Enable and configure Plasma6";
  };

  config = mkIf config.plasma.enable { 
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
}
