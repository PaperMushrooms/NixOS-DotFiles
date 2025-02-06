{ pkgs }:

pkgs.writeShellScriptBin "Pixel5-crDroid9-A13" ''
    cd ~/Android/Pixel5/crDroid9-A13
    bash install.sh
    cd 
''
