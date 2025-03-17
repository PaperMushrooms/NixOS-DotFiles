{
  imports = [
    ./../../Config/hardware-configuration.nix
    ./audio.nix
    ./gaming.nix
    ./bootloader.nix
    ./plasma.nix
    ./ssh.nix
    ./android.nix
    ./virtualisation.nix
    ../Home/Hyprland/hypr.nix
    ./gnome.nix
    ./libreoffice.nix
  ];
}
