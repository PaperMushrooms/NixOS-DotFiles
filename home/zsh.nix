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
      theme = "agnoster";
    };
  };

  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    starship
    powerline
    powerline-fonts
  ];

  programs.starship = {
    enable = true;
    settings = {
      add_newline = true;
      command_timeout = 1300;
      scan_timeout = 50;
      format = "$all$nix_shell$nodejs$lua$golang$rust$php$git_branch$git_commit$git_state$git_status\n$username$hostname$directory";
      character = {
        success_symbol = "[](bold green) ";
        error_symbol = "[✗](bold red) ";
      };
    };
  };
}