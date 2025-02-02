{ inputs, ... }:

{
  # Web Browser Configuration
  programs.firefox = {
    enable = true;
    profiles = {
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
}
