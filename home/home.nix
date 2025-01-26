{ inputs, config, pkgs, lib, ... }:

{
  
  imports = [
    ./firefox.nix
    ./packages.nix
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
  ".steam".source = "/persist/home/nixon/.steam";
  ".local/share/Steam".source = "/persist/home/nixon/.local/share/Steam";
  ".config/Steam".source = "/persist/home/nixon/.config/Steam";
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/nixon/etc/profile.d/hm-session-vars.sh
  #
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
