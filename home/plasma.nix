{ config, pkgs, ... }:

{
  # Configure Plasma Theme
  programs.plasma = {
    enable = true;
    workspace = {
      colorScheme = "BreezeDark"; # Enables dark mode
      windowDecorations = "org.kde.breeze";
      splashScreen = "None"; # Declares Splash Screen
      theme = "BreezeDark";
      cursorTheme = "Breeze";
     };
  };
}
