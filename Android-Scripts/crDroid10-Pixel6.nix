{ pkgs }:

pkgs.writeShellScriptBin "crDroid10-Pixel6" ''
    cd ~/Android/Pixel6/crDroid10-A14
    bash install.sh
    cd 
''