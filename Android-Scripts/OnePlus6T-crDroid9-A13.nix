{ pkgs }:

pkgs.writeShellScriptBin "OnePlus6T-crDroid9-A13" ''
    cd ~/Android/OnePlus6T/crDroid7-A11
    bash install.sh
    cd 
''

