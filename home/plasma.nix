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
      theme = "BreezeDark";
      cursor= {
        theme = "Breeze";
      };
    };
    settings = {
      panels = [
        {
          location = "bottom";  # Options: "top", "bottom", "left", "right"
          alignment = "center"; # Options: "left", "center", "right"
          widgets = [
            "org.kde.plasma.kickoff"  # Application Launcher
            "org.kde.plasma.taskmanager"  # Task Manager
            "org.kde.plasma.systemtray"  # System Tray
            "org.kde.plasma.digitalclock"  # Clock
          ];
        }
      ];
    };
  };
}
