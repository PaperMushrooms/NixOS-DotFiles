{ pkgs }:

pkgs.writeShellScriptBin "crDroid10-Pixel5" ''
    cd ~/Android/Pixel5/crDroid10-A14
    bash install.sh
    cd 
''