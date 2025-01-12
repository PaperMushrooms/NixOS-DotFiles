{
  # Enable Steam
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
  };

  # Enable Modern AMD Drivers
  services.xserver.videoDrivers = [ "radeon" ];

  # Ensure the necessary firmware is available for GPU
  hardware.enableRedistributableFirmware = true;
}