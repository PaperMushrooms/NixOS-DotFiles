{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Custom Script For Installing crDroid10-A14 To Google Pixel 5
    (import ../Android-Scripts/crDroid10-Pixel5.nix { inherit pkgs; })

    # Custom Script For Installing crDroid9-A13 To Google Pixel 5
    (import ../Android-Scripts/crDroid9-Pixel5.nix { inherit pkgs; })

    # Custom Script For Installing crDroid10-A14 To Google Pixel 6
    (import ../Android-Scripts/crDroid10-Pixel6.nix { inherit pkgs; })

    # Custom Script For Installing DerpFest-A14 To Google Pixel 6a
    (import ../Android-Scripts/DerpFest-A14-Pixel6a.nix { inherit pkgs; })

    # Custom Script For Installing crDroid10-A14 To Google Pixel 7a
    (import ../Android-Scripts/crDroid10-Pixel7a.nix { inherit pkgs; })

    # Custom Script For Installing crDroid7-A11 To OnePlus Mclaren 7T Pro 5G
    (import ../Android-Scripts/McLaren-A11.nix { inherit pkgs; })

    # Custom Script For Installing crDroid8-A12 To OnePlus Mclaren 7T Pro 5G
    (import ../Android-Scripts/McLaren-A12.nix { inherit pkgs; })

    # Custom Script For Installing crDroid9-A13 To OnePlus Mclaren 7T Pro 5G
    (import ../Android-Scripts/McLaren-A13.nix { inherit pkgs; })

    # Custom Script For Installing crDroid10-A14 To OnePlus Mclaren 7T Pro 5G
    (import ../Android-Scripts/McLaren-A14.nix { inherit pkgs; })

    # Custom Script For Installing crDroid10-A14 To OnePlus 9
    (import ../Android-Scripts/crDroid10-OnePlus9.nix { inherit pkgs; })
    
    # Custom Script For Installing Pokemon GO Spoofing Apps To Androids
    (import ../Android-Scripts/PokeApps.nix { inherit pkgs; })
  ];
}
