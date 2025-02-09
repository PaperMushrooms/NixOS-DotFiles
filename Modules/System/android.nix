{ pkgs, ... }:

{
  # Install Android Tools.
  programs.adb.enable = true;

  # Enable USBmuxd
  services.usbmuxd.enable = true;

  pkgs.writeShellScriptBin "McLaren-crDroid7-A11" ''
      cd ~/Android/McLaren/crDroid7-A11/
      bash install.sh
      cd 
  ''

  pkgs.writeShellScriptBin "McLaren-crDroid8-A12" ''
    cd ~/Android/McLaren/crDroid8-A12/
    bash install.sh
    cd 
  ''

  pkgs.writeShellScriptBin "McLaren-crDroid9-A13" ''
    cd ~/Android/McLaren/crDroid9-A13/
    bash install.sh
    cd 
  ''

  pkgs.writeShellScriptBin "McLaren-crDroid10-A14" ''
    cd ~/Android/McLaren/crDroid10-A14/
    bash install.sh
    cd 
  ''
  
  pkgs.writeShellScriptBin "OnePlus6T-crDroid7-A11" ''
    cd ~/Android/OnePlus6T/crDroid7-A11
    bash install.sh
    cd 
  ''

  pkgs.writeShellScriptBin "OnePlus6T-crDroid8-A12" ''
    cd ~/Android/OnePlus6T/crDroid7-A11
    bash install.sh
    cd 
  ''

  pkgs.writeShellScriptBin "OnePlus6T-crDroid9-A13" ''
    cd ~/Android/OnePlus6T/crDroid9-A13
    bash install.sh
    cd 
  ''

  pkgs.writeShellScriptBin "OnePlus6T-crDroid10-A14" ''
      cd ~/Android/OnePlus6T/crDroid10-A14
      bash install.sh
      cd 
  ''

  pkgs.writeShellScriptBin "OnePlus9-crDroid9-A13" ''
    cd ~/Android/OnePlus9/crDroid9-A13
    bash install.sh
    cd 
  ''

  pkgs.writeShellScriptBin "OnePlus9-crDroid10-A14" ''
    cd ~/Android/OnePlus9/crDroid10-A14
    bash install.sh
    cd 
  ''

  pkgs.writeShellScriptBin "Pixel5-crDroid9-A13" ''
    cd ~/Android/Pixel5/crDroid9-A13
    bash install.sh
    cd 
  ''

  pkgs.writeShellScriptBin "Pixel5-crDroid10-A14" ''
    cd ~/Android/Pixel5/crDroid10-A14
    bash install.sh
    cd 
  ''

  pkgs.writeShellScriptBin "Pixel5-GrapheneOS-A14" ''
    cd ~/Android/Pixel5/GrapheneOS-A14
    bash install.sh
    cd 
  ''

  pkgs.writeShellScriptBin "Pixel5-OEM-A11" ''
    cd ~/Android/Pixel5/OEM-A11-Latest
    bash install.sh
    cd 
  ''

  pkgs.writeShellScriptBin "Pixel5-OEM-A12" ''
    cd ~/Android/Pixel5/OEM-A12-Latest
    bash install.sh
    cd 
  ''

  pkgs.writeShellScriptBin "Pixel5-OEM-A13" ''
    cd ~/Android/Pixel5/OEM-A13-Latest
    bash install.sh
    cd 
  ''

  pkgs.writeShellScriptBin "Pixel5-OEM-A14" ''
    cd ~/Android/Pixel5/OEM-A14-Latest
    bash install.sh
    cd 
  ''

  pkgs.writeShellScriptBin "Pixel6-crDroid10-A14" ''
    cd ~/Android/Pixel6/crDroid10-A14
    bash install.sh
    cd 
  ''

  pkgs.writeShellScriptBin "Pixel6-OEM-A13" ''
    cd ~/Android/Pixel6/OEM-A13-Magisk
    bash install.sh
    cd 
  ''

  pkgs.writeShellScriptBin "Pixel6a-DerpFest-A14" ''
    cd ~/Android/Pixel6a/DerpFest-A14
    bash install.sh
    cd 
  ''

  pkgs.writeShellScriptBin "Pixel6a-OEM-A13" ''
    cd ~/Android/Pixel6a/OEM-A13-Latest
    bash install.sh
    cd 
  ''

  pkgs.writeShellScriptBin "Pixel7a-crDroid9-A13" ''
    cd ~/Android/Pixel7a/crDroid9-A13
    bash install.sh
    cd 
  ''

  pkgs.writeShellScriptBin "Pixel7a-crDroid10-A14" ''
    cd ~/Android/Pixel7a/crDroid10-A14
    bash install.sh
    cd 
  ''

  pkgs.writeShellScriptBin "Pixel7a-OEM-A13" ''
    cd ~/Android/Pixel7a/OEM-A13-Latest
    bash install.sh
    cd 
  ''

  pkgs.writeShellScriptBin "Pixel7a-OEM-A14" ''
    cd ~/Android/Pixel7a/OEM-A14-Latest
    bash install.sh
    cd 
  ''

  pkgs.writeShellScriptBin "PokeApps" ''
    cd ~/Android/Apps
    bash install.sh
    cd 
  ''  
    
  environment.systemPackages = with pkgs; [

    # Custom Script For Installing OEM-A11 To Google Pixel 5
    (import ../Android-Scripts/Pixel5-OEM-A11.nix { inherit pkgs; })

    # Custom Script For Installing OEM-A12 To Google Pixel 5
    (import ../Android-Scripts/Pixel5-OEM-A12.nix { inherit pkgs; })

    # Custom Script For Installing OEM-A13 To Google Pixel 5
    (import ../Android-Scripts/Pixel5-OEM-A13.nix { inherit pkgs; })

    # Custom Script For Installing OEM-A14 To Google Pixel 5
    (import ../Android-Scripts/Pixel5-OEM-A14.nix { inherit pkgs; })

    # Custom Script For Installing crDroid9-A13 To Google Pixel 5
    (import ../Android-Scripts/Pixel5-crDroid9.nix { inherit pkgs; })

    # Custom Script For Installing crDroid10-A14 To Google Pixel 5
    (import ../Android-Scripts/Pixel5-crDroid10.nix { inherit pkgs; })

    # Custom Script For Installing GrapheneOS-A14 To Google Pixel 5
    (import ../Android-Scripts/Pixel5-GrapheneOS-A14.nix { inherit pkgs; })

    # Custom Script For Installing OEM-A13 To Google Pixel 6
    (import ../Android-Scripts/Pixel6-OEM-A13.nix { inherit pkgs; })

    # Custom Script For Installing crDroid10-A14 To Google Pixel 6
    (import ../Android-Scripts/Pixel6-crDroid10.nix { inherit pkgs; })

    # Custom Script For Installing OEM-A13 To Google Pixel 6a
    (import ../Android-Scripts/Pixel6a-OEM-A13.nix { inherit pkgs; })

    # Custom Script For Installing DerpFest-A14 To Google Pixel 6a
    (import ../Android-Scripts/Pixel6a-DerpFest-A14.nix { inherit pkgs; })

    # Custom Script For Installing OEM-A13 To Google Pixel 7a
    (import ../Android-Scripts/Pixel7a-OEM-A13.nix { inherit pkgs; })

    # Custom Script For Installing OEM-A14 To Google Pixel 7a
    (import ../Android-Scripts/Pixel7a-OEM-A14.nix { inherit pkgs; })

    # Custom Script For Installing crDroid9-A13 To Google Pixel 7a
    (import ../Android-Scripts/Pixel7a-crDroid9-A13.nix { inherit pkgs; })

    # Custom Script For Installing crDroid10-A14 To Google Pixel 7a
    (import ../Android-Scripts/Pixel7a-crDroid10-A14.nix { inherit pkgs; })

    # Custom Script For Installing crDroid7-A11 To OnePlus 6T
    (import ../Android-Scripts/OnePlus6T-crDroid7-A11.nix { inherit pkgs; })

    # Custom Script For Installing crDroid7-A12 To OnePlus 6T
    (import ../Android-Scripts/OnePlus6T-crDroid8-A12.nix { inherit pkgs; })

    # Custom Script For Installing crDroid7-A13 To OnePlus 6T
    (import ../Android-Scripts/OnePlus6T-crDroid9-A13.nix { inherit pkgs; })

    # Custom Script For Installing crDroid7-A11 To OnePlus Mclaren 7T Pro 5G
    (import ../Android-Scripts/McLaren-crDroid-A11.nix { inherit pkgs; })

    # Custom Script For Installing crDroid8-A12 To OnePlus Mclaren 7T Pro 5G
    (import ../Android-Scripts/McLaren-crDroid-A12.nix { inherit pkgs; })

    # Custom Script For Installing crDroid9-A13 To OnePlus Mclaren 7T Pro 5G
    (import ../Android-Scripts/McLaren-crDroid-A13.nix { inherit pkgs; })

    # Custom Script For Installing crDroid10-A14 To OnePlus Mclaren 7T Pro 5G
    (import ../Android-Scripts/McLaren-crDroid-A14.nix { inherit pkgs; })

    # Custom Script For Installing crDroid9-A13 To OnePlus 9
    (import ../Android-Scripts/OnePlus9-crDroid9.nix { inherit pkgs; })

    # Custom Script For Installing crDroid10-A14 To OnePlus 9
    (import ../Android-Scripts/OnePlus9-crDroid10.nix { inherit pkgs; })
    
    # Custom Script For Installing Pokemon GO Spoofing Apps To Androids
    (import ../Android-Scripts/PokeApps.nix { inherit pkgs; })

  ];
}