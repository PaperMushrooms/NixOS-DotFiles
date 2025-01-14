{ pkgs }:

pkgs.writeShellScriptBin "Pixel5-crDroid10-A14" ''
    cd ~/Android/Pixel5/crDroid10-A14
    bash install.sh
    cd 
''