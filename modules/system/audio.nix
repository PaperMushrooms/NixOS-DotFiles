{ config, lib, pkgs, ... }: with lib; {

  options = {
    audio.enable =
      mkEnableOption "Enable Audio";
  };

  config = mkIf config.audio.enable {

    # Enable sound with pipewire.
    services.pulseaudio.enable = false;
    security.rtkit.enable = true;
    services.pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      wireplumber.enable = true;
    };

    environment.systemPackages = with pkgs; [
      pavucontrol
    ];
  };
}
