{ pkgs }:

pkgs.writeShellScriptBin "Pixel5-OEM-A12" ''
    cd ~/Android/Pixel5/OEM-A12-Latest
    bash install.sh
    cd 
''
