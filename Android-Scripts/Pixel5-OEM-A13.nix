{ pkgs }:

pkgs.writeShellScriptBin "Pixel5-OEM-A13" ''
    cd ~/Android/Pixel5/OEM-A13-Latest
    bash install.sh
    cd 
''
