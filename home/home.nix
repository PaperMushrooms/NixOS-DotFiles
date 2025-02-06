{ inputs, config, pkgs, lib, ... }:

{
  
  imports = [
    ./firefox.nix
    ./packages.nix
    ./plasma.nix
    ./Hyprland/hypr.nix
    ./Hyprland/keybindings.nix
    ./git.nix
    ./zsh.nix
  ];

  home.username = "nixon";
  home.homeDirectory = "/home/nixon";

  home.stateVersion = "24.05";

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {

  };

  # Configure VScodium
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    extensions = with pkgs.vscode-extensions; [
      ms-python.python                 # Python extension
      jnoortheen.nix-ide               # Nix language support
      esbenp.prettier-vscode           # Prettier for formatting
    ];
  };

  home.sessionVariables = {
     EDITOR = "nano";
  };

  # Install World of Warcraft if not already installed.
  home.activation.installWoW = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    lutris -i https://lutris.net/api/installers/world-of-warcraft || true
  '';

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
