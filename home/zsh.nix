{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      update = "sudo nixos-rebuild switch";
      upgrade = "sudo nix flake update --flake /etc/nixos/ && sudo nixos-rebuild switch";
    };
  };
}