{ inputs, config, pkgs, lib, ... }:

{

  imports = [ 

    # Include Hardware Config
    ./hardware-configuration.nix

    # Include Locale Configuration
    ../Modules/System/locales.nix

    # Include System/SSH Configuration
    ../Modules/System/ssh.nix

    # Include System/Bootloader Configuration
    ../Modules/System/bootloader.nix
    
    # Include System/Desktop Environment Configuration
    ../Modules/System/desktop.nix

    # Include Sound Configuration
    ../Modules/System/audio.nix

    # Include System Packages
    ../Modules/System/packages.nix

    # Include Custom Android Scripts
    ../Modules/System/android.nix

    # Include Gaming Confiuration
    ../Modules/System/gaming.nix

    # Include Plasma Config
    ../Modules/System/plasma.nix

    # Include GNOME Config
    ../Modules/System/gnome.nix
    
  ];

  # Enabling Flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Set the hostname.
  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager = {
    enable = true;
  };

  # Force NetworkManager to start at boot
  systemd.services.NetworkManager = {
    wantedBy = [ "multi-user.target" ];
    after = [ "network.pre.target" ];
    before = [ "sshd.service" ];
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.nixon = {
    isNormalUser = true;
    description = "nixon";
    extraGroups = [ "networkmanager" "wheel" "adbusers" "openrazer" "usbmuxd" ];
    shell = pkgs.zsh;
  };

  # Enable Razer peripherals
  hardware.openrazer.enable = true;

  # Enable USBmuxd
  services.usbmuxd.enable = true;

  # Install Android Tools.
  programs.adb.enable = true;

  # Enable WayDroid Android Emulator
  virtualisation.waydroid.enable = true;

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # Enable Bluetooth
  services.blueman.enable = true;
  hardware.bluetooth.enable = true; 
  hardware.bluetooth.powerOnBoot = true;
  
  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # Enable Flatpak
  services.flatpak.enable = true;

  # Force Plasma SSh Keypass Instead of GNOME
  programs.ssh.askPassword = lib.mkForce "/nix/store/awb6dzl5kcwi2910frjcw0b96988fp2b-ksshaskpass-6.2.4/bin/ksshaskpass";

  # Exclude unneccessary Plasma packages
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    konsole
    oxygen
    kate
  ];

  # Enable dconf
  programs.dconf.enable = true;

  # GNOME Desktop Integration
#  qt = {
#    enable = true;
#    platformTheme = "gnome";
#    style = "adwaita-dark";
#  };

  # Enable Zsh System-Wide
  programs.zsh.enable = true;

  # NixOS Version
  system.stateVersion = "24.05"; # Did you read the comment?

}
