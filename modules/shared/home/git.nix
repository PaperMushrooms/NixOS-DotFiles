{ config, lib, pkgs, ... }:
with lib; {
  options = { git.enable = mkEnableOption "Enables Git"; };

  config = mkIf config.git.enable {
    # Enable and Configure Git
    programs.git = {
      enable = true;
      settings = {
        user.name = "PaperMushrooms";
        user.email = "dreems2reality@gmail.com";
        init.defaultBranch = "main";
      };
    };
  };
}
