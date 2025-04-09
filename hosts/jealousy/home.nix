{ inputs, config, pkgs, lib, ... }:

{
  
  imports = [
    ./home-options.nix
    ../../modules/home
    ../../modules/home/packages.nix
    ../../modules/home/desktop/hyprland/keybindings.nix
  ];

  home.username = "jealousy";
  home.homeDirectory = "/home/jealousy";
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
