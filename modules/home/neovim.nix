{ config, lib, pkgs, ... }:

{

  programs.nvf = {
    enable = true;

    settings = {
      vim = {
        viAlias = false;
        vimAlias = false;

        lsp = {
          enable = true;
        };

        languages = {
          nix.enable = true;
          python.enable = true;
        };

        theme = {
          enable = true;
          name = "dracula";
          style = "dark_high_contrast";
        };
      };
    };
  };

  home.packages = with pkgs; [
    neovim
  ];
}
