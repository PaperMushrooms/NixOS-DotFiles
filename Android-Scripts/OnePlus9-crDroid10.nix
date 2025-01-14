{ pkgs }:

pkgs.writeShellScriptBin "OnePlus9-crDroid10-A14" ''
    cd ~/Android/OnePlus9/crDroid10-A14
    bash install.sh
    cd 
''
