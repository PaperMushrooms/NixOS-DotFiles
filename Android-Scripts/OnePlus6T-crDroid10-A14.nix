{ pkgs }:

pkgs.writeShellScriptBin "OnePlus6T-crDroid10-A14" ''
    cd ~/Android/OnePlus6T/crDroid10-A14
    bash install.sh
    cd 
''

