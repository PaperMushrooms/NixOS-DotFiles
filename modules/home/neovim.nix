{ config, lib, pkgs, ... }:

{

  programs.neovim = {
    enable = true;
    defaultEditor = true;

    plugins = with pkgs; [
      vimPlugins.nvim-tree-lua
      vimPlugins.telescope-nvim
    ];
  };

  programs.nvf = {
    enable = true;

    settings = {
      vim = {
        viAlias = true;
        vimAlias = true;

        telescope.enable = true;
        nvim-tree-lua.enable = true;

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
}
