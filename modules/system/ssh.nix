{ config, lib, pkgs, ... }: with lib; {

  options = {
    ssh.enable =
      mkEnableOption "Enables SSH";
  };

  config = mkIf config.ssh.enable {
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
          IdentityFile /etc/ssh/GitHub.pub
          IdentitiesOnly yes
    
        Host gitlab.com
          User git
          IdentityFile /etc/ssh/GitHub.pub
          IdentitiesOnly yes
      '';
    };
  };
}
