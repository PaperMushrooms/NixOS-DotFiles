{ config, lib, pkgs, ... }: with lib; {

  options = {
    myshell.enable =
      mkEnableOption "Enable and configure my terminal setup";
  };

  config = mkIf config.myshell.enable {
    # Enable and Configure Zsh
    programs.zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;

      # Zsh Aliases
      shellAliases = {
        upload = "cd /etc/nixos && git add . && git commit -m 'Update' && git push -u origin main && cd ";
        update = "sudo nix flake update --flake /etc/nixos/";
        rootenv = "nix-shell /etc/nixos/shells/PoGo-Root/";

        format = "nix-shell -p nixpkgs-fmt --command 'nixpkgs-fmt /etc/nixos/'";

        rpi-imager = "nix-shell -p rpi-imager --command 'rpi-imager'";
      };

      # Enable and Configure Oh-My-Zsh Plugin
      oh-my-zsh = {
        enable = true;
        plugins = [ "git" "" ];
        theme = "agnoster";
      };
    };

    # Enable Font Configuration for NixOS
    fonts.fontconfig.enable = true;

    # Install Terminal Add-on Packages and Fontsv
    home.packages = with pkgs; [
      starship
      powerline
      powerline-fonts
      jetbrains-mono
    ];

    # Enable and Configure Starship
    programs.starship = {
      enable = true;
      settings = {
        add_newline = true;
        command_timeout = 1300;
        scan_timeout = 50;
        format = "$username@$hostname $directory$git_branch$git_state$git_status\n$character";

        hostname = {
          ssh_only = false;
          format = "[$hostname](bold yellow) ";
          trim_at = ".";
          disabled = false;
        };

        character = {
          success_symbol = "[➜](bold green) ";
          error_symbol = "[✗](bold red) ";
        };
      };
    };

    #Auto-Start Zsh when logging into a graphical session
    home.file.".bash_profile".text = ''
      if [ -n "$DISPLAY" ] || [ -n "$WAYLAND_DISPLAY" ]; then
        exec zsh
      fi
    '';
  };
}
