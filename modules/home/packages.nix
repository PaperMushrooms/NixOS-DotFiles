{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    dunst # Notification Manager
    discord # Messenger
    gimp # Photo Editor
    ungoogled-chromium # Web Browser
    telegram-desktop # Private Messenger
    neofetch # System Specs Reader
    btop # System Monitor
    payload-dumper-go # Payload.bin dumper
    starship # Terminal Customization
    powerline # Terminal Customization
    powerline-fonts # Terminal Customization
    terminus_font # Terminal Customization
    qt6.qttools # Add-ons for GNOME
    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];
}
