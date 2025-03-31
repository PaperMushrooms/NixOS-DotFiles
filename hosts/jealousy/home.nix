{ inputs, config, pkgs, lib, ... }:

{
  
  imports = [
    ../../modules/home/common.nix
    ../../modules/home/packages.nix
    ../../modules/home/desktop/hyprland/keybindings.nix
  ];

  ## ENABLE AND DISABLE MODULES HERE

  vscodium.enable = true;
  gnomehome.enable = true;
  hyprhome.enable = true;
  git.enable = true;
  firefox.enable = true;
  myshell.enable = true;
  plasmahome.enable = true;

  ## FOR ORGANIZATION SAKE, PLEASE KEEP ALL MODULES IN BETWEEN THESE TWO COMMENTS

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
