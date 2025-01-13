{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      update = "sudo nixos-rebuild switch";
      upgrade = "sudo nix flake update --flake /etc/nixos/ && sudo nixos-rebuild switch";
      newdots = "cd /etc/nixos && git add . && git commit -m 'Update' && git push -u origin main && cd ";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "" ];
      theme = "RANDOM";
    };
  };

  home.packages = with pkgs; [
    powerline-fonts
  ];
}