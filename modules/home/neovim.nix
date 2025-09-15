{ config, lib, pkgs, ... }:

{

  programs.nvf = {
    enable = true;

    settings = {
      vim = {
        viAlias = true;
        vimAlias = true;

        lsp = {
          enable = true;
        };

        languages = {
          enableTreesitter = true;

          ts.enable = true;

          nix = {
            enable = true;
            lsp.enable = true;
            format.enable = true;
          };

          python.enable = true;
        };
      };
    };
  };

  home.packages = with pkgs; [
    neovim
  ];
}
