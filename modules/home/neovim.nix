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
      };
    };
  };

  home.packages = with pkgs; [
    neovim
  ];
}
