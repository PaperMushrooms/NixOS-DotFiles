{ config, pkgs, ... }:

{
  # Configure Plasma Theme
  programs.plasma = {
    enable = true;
    workspace = {
      colorScheme = "BreezeDark"; # Enables dark mode
      lookAndFeel = "org.kde.breezeDark.desktop";
      splashScreen = {
        theme = "None";
      };
    };
  };
}
