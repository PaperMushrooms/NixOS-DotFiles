{ pkgs, config, ... }:

{
  home.sessionVariables = {
    SSH_AUTH_SOCK = "${config.xdg.runtimeDir}/ssh-agent.socket";
  };

  systemd.user.services.ssh-agent = {
    enable = true;
    Service = {
      ExecStart = "${pkgs.openssh}/bin/ssh-agent -a ${config.xdg.runtimeDir}/ssh-agent.socket";
      Restart = "always";
    };
  };

  home.activationScripts.addSshKey = ''
    if [ -S "${config.xdg.runtimeDir}/ssh-agent.socket" ]; then
      SSH_AUTH_SOCK="${config.xdg.runtimeDir}/ssh-agent.socket" ssh-add ~/.ssh/GitHub 2>/dev/null || true
    fi
  '';
}