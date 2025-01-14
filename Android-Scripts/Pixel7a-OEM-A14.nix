{ pkgs }:

pkgs.writeShellScriptBin "Pixel7a-OEM-A14" ''
    cd ~/Android/Pixel7a/OEM-A14-Latest
    bash install.sh
    cd 
''
