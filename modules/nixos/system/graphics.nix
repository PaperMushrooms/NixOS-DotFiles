{ inputs, pkgs, lib, ... }: {

  # System Configuration
  hardware = {
    graphics.enable = true;
    graphics.enable32Bit = true;
    enableRedistributableFirmware = true;
    nvidia = {
      dynamicBoost.enable = true;
      modesetting.enable = true;
      powerManagement = {
        enable = false;
        finegrained = false;
      };
      open = true;
      nvidiaSettings = true;
    };
  };

  # Enable Modern Drivers
  services.xserver.videoDrivers = [ "radeon" "amdgpu" "nvidia" ];
}
