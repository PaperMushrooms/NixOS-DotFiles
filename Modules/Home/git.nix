{ config, lib, pkgs, ... }: with lib; {

  options = {
    git.enable = 
      mkEnableOption "Enables Git"
  };

  config = mkIf config.git.enable {

    # Enable and Configure Git
    programs.git = {
      enable = true;
      userName = "PaperMushrooms";
      userEmail = "dreems2reality@gmail.com";

      # Set Default Branch as main
      extraConfig = {
        init.defaultBranch = "main";
      };
    };
  };
}
