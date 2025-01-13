{ inputs, config, pkgs, lib, ... }:

{

  imports = [ 

#    # Include Hardware Config
    ./Configurations/hardware-configuration.nix

    # Include Locale Configuration
    ./system/locale-config.nix

    # Include Bootloader Configuration
    ./system/bootloader-config.nix
    
    # Include Desktop Environment Configuration
    ./system/desktop-config.nix

    # Include Sound Configuration
    ./system/audio-config.nix

    # Include System Packages
    ./system/packages.nix

    # Include Custom Android Scripts
    ./system/Android-Scripts.nix

    # Include Gaming Confiuration
    ./Configurations/gaming-configuration.nix
    
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
  networking.networkmanager.enable = true;

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

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # Enable and Configure the OpenSSH daemon.
  services.openssh = {
  enable = true;
  ports = [ 44906 ];
    settings = {
      PasswordAuthentication = true;
      AllowUsers = null; # Allows all users by default. Can be [ "user1" "user2" ]
      UseDns = true;
      X11Forwarding = false;
      PermitRootLogin = "prohibit-password"; # "yes", "without-password", "prohibit-password", "forced-commands-only", "no"
    };
  };

  # Enable Bluetooth
  services.blueman.enable = true;
  hardware.bluetooth.enable = true; 
  hardware.bluetooth.powerOnBoot = true;
  
  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # Force Plasma SSh Keypass Instead of GNOME
  programs.ssh.askPassword = lib.mkForce "/nix/store/awb6dzl5kcwi2910frjcw0b96988fp2b-ksshaskpass-6.2.4/bin/ksshaskpass";

  # Enable Zsh System-Wide
  programs.zsh.enable = true;

  # NixOS Version
  system.stateVersion = "24.05"; # Did you read the comment?

}
