{ pkgs }:

pkgs.writeShellScriptBin "OnePlus6T-crDroid7-A11" ''
    cd ~/Android/OnePlus6T/crDroid7-A11
    bash install.sh
    cd 
''

