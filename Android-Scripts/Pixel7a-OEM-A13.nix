{ pkgs }:

pkgs.writeShellScriptBin "Pixel7a-OEM-A13" ''
    cd ~/Android/Pixel7a/OEM-A13-Latest
    bash install.sh
    cd 
''
