{ pkgs, modulesPath, ... }: {

  imports = [
    "${modulesPath}/installer/cd-dvd/installation-cd-minimal.nix"
  ];

  nixpkgs.hostPlatform = "x86_64-linux";

  environment.systemPackages = with pkgs; [
    git
    neovim
    networkmanager
    wpa_supplicant
  ];
  
  systemd.services.NetworkManager.enable = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
