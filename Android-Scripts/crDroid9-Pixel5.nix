{ pkgs }:

pkgs.writeShellScriptBin "crDroid9-Pixel5" ''
    cd ~/Android/Pixel5/crDroid9-A13
    bash install.sh
    cd 
''
