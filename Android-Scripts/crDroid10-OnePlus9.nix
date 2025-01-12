{ pkgs }:

pkgs.writeShellScriptBin "crDroid10-OnePlus9" ''
    cd ~/Android/OnePlus9/crDroid10-A14
    bash install.sh
    cd 
''
