{ inputs, ... }:

{
  # Web Browser Configuration

  # Configure Firefox
  programs.firefox = {
    enable = true;
    };

    profiles = {
      default.settings = {
      "browser.theme.content-theme" = 1;
      "browser.theme.toolbar-theme" = 1;
      "ui.systemUsesDarkTheme" = 1;
      };

      nixon = {
        name = "nixon";
        bookmarks = [
          {
            name = "Gmail";
            tags = [ "Email" ];
            keyword = "gmail";
            url = "https://mail.google.com/";
          }
          {
            name = "Google Drive";
            tags = [ "Cloud" ];
            keyword = "drive";
            url = "https://drive.google.com/";
          }
          {
            name = "Ebay";
            tags = [ "Shopping" ];
            keyword = "drive";
            url = "https://www.ebay.com/";
          }
          {
            name = "ChatGPT";
            tags = [ "Artificial Intelligence" ];
            keyword = "GPT";
            url = "https://chatgpt.com/";
          }
          {
            name = "GitHub";
            tags = [ "Development" ];
            keyword = "Git";
            url = "https://github.com/";
          }
          {
            name = "NixOS & Flakes Book";
            tags = [ "Education" ];
            keyword = "NixManual";
            url = "https://nixos-and-flakes.thiscute.world/";
          }
          {
          toolbar = true;
          bookmarks = [
            {
              name = "Gmail";
              tags = [ "Email" ];
              keyword = "gmail";
              url = "https://mail.google.com/";
            }
            {
              name = "Google Drive";
              tags = [ "Cloud" ];
              keyword = "drive";
              url = "https://drive.google.com/";
            }
            {
              name = "Ebay";
              tags = [ "Shopping" ];
              keyword = "drive";
              url = "https://www.ebay.com/";
            }
            {
              name = "ChatGPT";
              tags = [ "Artificial Intelligence" ];
              keyword = "GPT";
              url = "https://chatgpt.com/";
            }
            {
              name = "GitHub";
              tags = [ "Development" ];
              keyword = "Git";
              url = "https://github.com/";
            }
            {
              name = "NixOS & Flakes Book";
              tags = [ "Education" ];
              keyword = "NixManual";
              url = "https://nixos-and-flakes.thiscute.world/";
            }
          ];
         }
        ];
        extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
          adblocker-ultimate
        ];
      };
    };
  };  

  # Set the default browser to Firefox
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "text/html" = [ "firefox.desktop" ];
      "application/xhtml+xml" = [ "firefox.desktop" ];
      "application/x-www-browser" = [ "firefox.desktop" ];
      "x-scheme-handler/http" = [ "firefox.desktop" ];
      "x-scheme-handler/https" = [ "firefox.desktop" ];
      "x-scheme-handler/about" = [ "firefox.desktop" ];
      "x-scheme-handler/unknown" = [ "firefox.desktop" ];
    };
  };
}
