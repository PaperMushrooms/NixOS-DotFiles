{ pkgs }:

pkgs.writeShellScriptBin "Pixel7a-crDroid9-A13" ''
    cd ~/Android/Pixel7a/crDroid9-A13
    bash install.sh
    cd 
''
