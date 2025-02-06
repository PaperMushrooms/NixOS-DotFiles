{ pkgs }:

pkgs.writeShellScriptBin "Pixel5-OEM-A11" ''
    cd ~/Android/Pixel5/OEM-A11-Latest
    bash install.sh
    cd 
''
