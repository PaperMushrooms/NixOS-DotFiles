{ config, lib, pkgs, ... }:

{

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  programs.nvf = {
    enable = true;

    settings = {
      vim = {
        viAlias = true;
        vimAlias = true;

        startPlugins.nvim-tree-lua.enable = true;
        telescope.enable = true;
        autocomplete.nvim-cmp.enable = true;

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
