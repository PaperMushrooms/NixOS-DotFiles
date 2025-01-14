{ pkgs }:

pkgs.writeShellScriptBin "Pixel7a-crDroid10-A14" ''
    cd ~/Android/Pixel7a/crDroid10-A14
    bash install.sh
    cd 
''
