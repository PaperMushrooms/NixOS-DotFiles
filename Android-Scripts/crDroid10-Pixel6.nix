{ pkgs }:

pkgs.writeShellScriptBin "Pixel6-crDroid10-A14" ''
    cd ~/Android/Pixel6/crDroid10-A14
    bash install.sh
    cd 
''