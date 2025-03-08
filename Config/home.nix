{ inputs, config, pkgs, lib, ... }:

{
  
  imports = [
    ../Modules/Home/default.nix
    ../Modules/Home/packages.nix
    ../Modules/Home/gnome.nix
    ../Modules/Home/Hyprland/hypr.nix
    ../Modules/Home/Hyprland/keybindings.nix
    ../Modules/Home/zsh.nix
  ];

  # vscodium.enable = true;

  #plasma.enable = true;

  git.enable = true;

  firefox.enable = true;

  home.username = "nixon";
  home.homeDirectory = "/home/nixon";

  home.stateVersion = "24.05";

  home.file = {
 
    # Configure Razer devices to stay on during screensaver
    ".config/openrazer/razer.conf".text = ''
    devices_off_on_screensaver = False
    '';
 
 };

  home.sessionVariables = {
     EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
