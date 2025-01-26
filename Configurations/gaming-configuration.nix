{ pkgs, ... }:

{
  # Enable Steam
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
  };

  # Enable Gaming Related Packages
  environment.systemPackages = with pkgs; [
  xivlauncher        # Custom launcher for Final Fantasy XIV
  lutris             # Open-source game manager for Linux
  vulkan-tools       # Vulkan utilities like vulkaninfo
  vulkan-loader      # Vulkan loader
  vulkan-validation-layers
  mesa               # Open-source AMD drivers
  mesa.drivers
  minicom            # [ To be listed... ]
  mangohud           # System performance heads-up display for OpenGL and Vulkan applications
  gamescope
  vkd3d
  dxvk
  ];

  # Enable Game Mode for NixOS
  programs.gamemode.enable = true;

  # Enable Modern AMD Drivers
  services.xserver.videoDrivers = [ "radeon" ];

  # Ensure the necessary firmware is available for GPU
  hardware.enableRedistributableFirmware = true;
}