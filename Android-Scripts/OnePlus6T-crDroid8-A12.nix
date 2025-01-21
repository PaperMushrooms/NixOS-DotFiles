{ pkgs }:

pkgs.writeShellScriptBin "OnePlus6T-crDroid8-A12" ''
    cd ~/Android/OnePlus6T/crDroid7-A11
    bash install.sh
    cd 
''

