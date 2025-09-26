{ pkgs }:

[

  (pkgs.writeShellScriptBin "McLaren-crDroid7-A11" ''
    cd ~/Android/McLaren/crDroid7-A11/
    bash install.sh
    cd 
  '')

  (pkgs.writeShellScriptBin "McLaren-crDroid8-A12" ''
    cd ~/Android/McLaren/crDroid8-A12/
    bash install.sh
    cd 
  '')

  (pkgs.writeShellScriptBin "McLaren-crDroid9-A13" ''
    cd ~/Android/McLaren/crDroid9-A13/
    bash install.sh
    cd 
  '')

  (pkgs.writeShellScriptBin "McLaren-crDroid10-A14" ''
    cd ~/Android/McLaren/crDroid10-A14/
    bash install.sh
    cd 
  '')

  (pkgs.writeShellScriptBin "OnePlus6T-crDroid7-A11" ''
    cd ~/Android/OnePlus6T/crDroid7-A11
    bash install.sh
    cd 
  '')

  (pkgs.writeShellScriptBin "OnePlus6T-crDroid8-A12" ''
    cd ~/Android/OnePlus6T/crDroid7-A11
    bash install.sh
    cd 
  '')

  (pkgs.writeShellScriptBin "OnePlus6T-crDroid9-A13" ''
    cd ~/Android/OnePlus6T/crDroid9-A13
    bash install.sh
    cd 
  '')

  (pkgs.writeShellScriptBin "OnePlus6T-crDroid10-A14" ''
    cd ~/Android/OnePlus6T/crDroid10-A14
    bash install.sh=
    cd 
  '')

  (pkgs.writeShellScriptBin "OnePlus7T-crDroid9-A13" ''
    cd ~/Android/OnePlus7T/crDroid9-A13
    fastboot flash dtbo dtbo.img
    fastboot flash vbmeta vbmeta.img
    fastboot flash recovery_a recovery.img
    fastboot flash recovery_b recovery.img
    fastboot reboot recovery
    echo && read -p "On the device, tap Factory Reset, then Format data / factory reset, and continue. 

    Then, select Apply Update, then Apply from ADB to put the device in ADB sideload mode.

    Press Enter to Flash ROM."
    adb sideload ROM.zip
    echo && read -p "Again, on the device, select Apply Update, then Apply from ADB to begin sideload.

    Press Enter to Flash Gapps."
    adb sideload Gapps.zip
    echo && read -p "One more time, on the device, select Apply Update, then Apply from ADB to begin sideload.

    Press Enter to Flash Magisk."
    adb sideload ~/Android/Apps/Magisk.apk
    cd
  '')

  (pkgs.writeShellScriptBin "OnePlus9-crDroid9-A13" ''
    cd ~/Android/OnePlus9/crDroid9-A13
    bash install.sh
    cd 
  '')

  (pkgs.writeShellScriptBin "OnePlus9-crDroid10-A14" ''
    cd ~/Android/OnePlus9/crDroid10-A14
    bash install.sh
    cd 
  '')

  (pkgs.writeShellScriptBin "Pixel4-OEM-A13" ''
    cd ~/Android/Pixel4/OEM-A13-Magisk
    bash install.sh
    cd
  '')

  (pkgs.writeShellScriptBin "Pixel5-crDroid9-A13" ''
    cd ~/Android/Pixel5/crDroid9-A13
    bash install.sh
    cd 
  '')

  (pkgs.writeShellScriptBin "Pixel5-crDroid10-A14" ''
    cd ~/Android/Pixel5/crDroid10-A14
    sudo bash install.sh
    cd 
  '')

  (pkgs.writeShellScriptBin "Pixel5-GrapheneOS-A14" ''
    cd ~/Android/Pixel5/GrapheneOS-A14
    bash install.sh
    cd 
  '')

  (pkgs.writeShellScriptBin "Pixel5-OEM-A11" ''
    cd ~/Android/Pixel5/OEM-A11-Latest
    bash install.sh
    cd 
  '')

  (pkgs.writeShellScriptBin "Pixel5-OEM-A12" ''
    cd ~/Android/Pixel5/OEM-A12-Latest
    bash install.sh
    cd 
  '')

  (pkgs.writeShellScriptBin "Pixel5-OEM-A13" ''
    cd ~/Android/Pixel5/OEM-A13-Latest
    bash install.sh
    cd 
  '')

  (pkgs.writeShellScriptBin "Pixel5-OEM-A14" ''
    cd ~/Android/Pixel5/OEM-A14-Latest
    bash install.sh
    cd 
  '')

  (pkgs.writeShellScriptBin "Pixel6-crDroid10-A14" ''
    cd ~/Android/Pixel6/crDroid10-A14
    sudo bash install.sh
    cd 
  '')

  (pkgs.writeShellScriptBin "Pixel6-OEM-A13" ''
    #!/bin/bash

    cd ~/Android/Pixel6/OEM-A13-Magisk 
    sudo bash install.sh
    cd 
  '')

  (pkgs.writeShellScriptBin "Pixel6-OEM-A15" ''
    cd ~/Android/Pixel6/OEM-A15-Magisk
    bash install.sh
    cd 
  '')

  (pkgs.writeShellScriptBin "Pixel6Pro-OEM-A13" ''
    cd ~/Android/Pixel6Pro/OEM-A13-Magisk
    bash install.sh
    cd 
  '')

  (pkgs.writeShellScriptBin "Pixel6a-DerpFest-A14" ''
    cd ~/Android/Pixel6a/DerpFest-A14
    bash install.sh
    cd 
  '')

  (pkgs.writeShellScriptBin "Pixel6a-OEM-A13" ''
    cd ~/Android/Pixel6a/OEM-A13-Magisk
    bash install.sh
    cd 
  '')

  (pkgs.writeShellScriptBin "Pixel7a-crDroid9-A13" ''
    cd ~/Android/Pixel7a/crDroid9-A13
    bash install.sh
    cd 
  '')

  (pkgs.writeShellScriptBin "Pixel7a-crDroid10-A14" ''
    cd ~/Android/Pixel7a/crDroid10-A14
    bash install.sh
    cd 
  '')

  (pkgs.writeShellScriptBin "Pixel7a-OEM-A13" ''
    cd ~/Android/Pixel7a/OEM-A13-Latest
    bash install.sh
    cd 
  '')

  (pkgs.writeShellScriptBin "Pixel7a-OEM-A14" ''
    cd ~/Android/Pixel7a/OEM-A14-Latest
    bash install.sh
    cd 
  '')

  (pkgs.writeShellScriptBin "PokeApps" ''
    cd ~/Android/Apps
    sudo bash installapps.sh
    cd 
  '')

  (pkgs.writeShellScriptBin "pixel-bootloader-unlock" ''
    #!/bin/bash

    for device in $(adb devices | grep device$ | cut -f1); do
    sudo adb -s "$device" reboot bootloader
    sudo fastboot -s "$device" flashing unlock &
    done
  '')

]
