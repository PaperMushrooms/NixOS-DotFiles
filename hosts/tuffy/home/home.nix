{ inputs, config, pkgs, lib, ... }:

{
  
  imports = [
    ./home-options.nix
    ../../../modules/home
    ../../../modules/home/packages.nix
    ../../../modules/home/desktop/hyprland/keybindings.nix
  ];

  home.username = "tuffy";
  home.homeDirectory = "/home/tuffy";
  home.stateVersion = "24.05";

  home.file = {
 
    # Configure Razer devices to stay on during screensaver
    ".config/openrazer/razer.conf".text = ''
    devices_off_on_screensaver = False
    '';
 
 };

  programs.zsh = {
    shellAliases = {
      rebuild = "cd /etc/nixos/ && sudo nixos-rebuild switch --flake .#tuffy && cd ";
    };
  };

  home.sessionVariables = {
     EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
