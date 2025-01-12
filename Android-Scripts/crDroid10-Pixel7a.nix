{ pkgs }:

pkgs.writeShellScriptBin "crDroid10-Pixel7a" ''
    cd ~/Android/Pixel7a/crDroid10-A14
    bash install.sh
    cd 
''
