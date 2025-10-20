{ config, lib, pkgs, ...}:

{
  programs.ssh = {
    extraConfig = ''
      Host github.com
        User git
        IdentityFile ~/.ssh/GitHub
        IdentitiesOnly yes
  
      Host satanix
        User dex
        IdentityFile ~/.ssh/nixathon
        IdentitiesOnly yes

       Host spawnix
        User dex
        IdentityFile ~/.ssh/nixathon
        IdentitiesOnly yes
    '';
  };
}
