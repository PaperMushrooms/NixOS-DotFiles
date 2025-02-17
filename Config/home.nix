{ inputs, config, pkgs, lib, ... }:

{
  
  imports = [
   ../Modules/Home/firefox.nix
   ../Modules/Home/packages.nix
   ../Modules/Home/plasma.nix
   ../Modules/Home/gnome.nix
   ../Modules/Home/Hyprland/hypr.nix
   ../Modules/Home/Hyprland/keybindings.nix
   ../Modules/Home/git.nix
   ../Modules/Home/zsh.nix
  ];

  home.username = "nixon";
  home.homeDirectory = "/home/nixon";

  home.stateVersion = "24.05";

  home.file = {
 
    # Configure Razer devices to stay on during screensaver
    ".config/openrazer/razer.conf".text = ''
    devices_off_on_screensaver = False
    '';
 
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
     EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
