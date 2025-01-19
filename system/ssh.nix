{
  # Enable and Configure the OpenSSH daemon.
  services.openssh = {
    enable = true;
    ports = [ 44906 ];
      settings = {
        PasswordAuthentication = false;
        AllowUsers = null; # Allows all users by default. Can be [ "user1" "user2" ]
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

      Host github.com
        User git
        IdentityFile ~/.ssh/GitHub
        IdentitiesOnly yes
    '';
  };
}