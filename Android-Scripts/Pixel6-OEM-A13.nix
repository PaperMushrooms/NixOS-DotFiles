{ pkgs }:

pkgs.writeShellScriptBin "Pixel6-OEM-A13" ''
    cd ~/Android/Pixel6/OEM-A13-Magisk
    bash install.sh
    cd 
''
