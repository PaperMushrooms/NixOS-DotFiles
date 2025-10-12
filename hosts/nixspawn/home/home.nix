{ inputs, config, pkgs, lib, ... }: {
  imports = [
    ./home-options.nix
    ../../../modules/nixos/home
    ../../../modules/shared
  ];

  home.username = "dex";
  home.homeDirectory = "/home/dex";
  home.stateVersion = "24.05";

  home.file = {
    # Configure Razer devices to stay on during screensaver
    ".config/openrazer/razer.conf".text = ''
      devices_off_on_screensaver = False
    '';
  };

  home.sessionVariables = { EDITOR = "nvim"; };

  # User Defined Aliases
  programs.zsh = {
    shellAliases = {
      rebuild =
        "sudo nixos-rebuild switch --flake .";
    };
  };

  stylix.targets.kde = {
    enable = false;
    decorations.enable = false;
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
