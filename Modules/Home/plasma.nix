{ config, pkgs, ... }:

{
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

      cursor= {
        theme = "Breeze";
      };
    };
  };
}
