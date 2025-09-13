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
          enableTreesitter = true;

          nix.enable = true;
          python.enable = true;
        };

        #        theme = {
        #          enable = true;
        #          name = "catppuccin";
        #          style = "mocha";
        #        };
      };
    };
  };

  home.packages = with pkgs; [
    neovim
  ];
}
