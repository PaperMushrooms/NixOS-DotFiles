}
  # Configure VScodium
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    profiles = {
      default = {
      extensions = with pkgs.vscode-extensions; [
        ms-python.python                 # Python extension
        jnoortheen.nix-ide               # Nix language support
        esbenp.prettier-vscode           # Prettier for formatting
      ];
      };
    };
  }
};
