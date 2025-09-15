{ config, lib, pkgs, ... }:

{

  programs.neovim = {
    enable = true;

    plugins = with pkgs; [
      nvim-tree-lua
    ];
  };

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

  environment.variables.EDITOR = "nvim";

  #  home.packages = with pkgs; [
  #    neovim
  #  ];
}
