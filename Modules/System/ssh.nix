{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.ssh;
in {
  options = {
    System.ssh = mkEnableOption "OpenSSH and SSH Agent configuration";
  };

  config = mkIf cfg {
    services.openssh = {
      enable = true;
      ports = [ 44906 ];
        settings = {
          PasswordAuthentication = false;
          UseDns = true;
          X11Forwarding = false;
          PermitRootLogin = "prohibit-password"; # "yes", "without-password", "prohibit-password", "forced-commands-only", "no"
        };
    };

  # Start Enable and Start SSH Agent On Startup
    programs.ssh = {
      startAgent = true;
      extraConfig = ''
        Host github.com
          User git
          IdentityFile ~/.ssh/GitHub
          IdentitiesOnly yes

        Host gitlab.com
          User git
          IdentityFile ~/.ssh/GitHub
          IdentitiesOnly yes
      '';
    };
  };
}
