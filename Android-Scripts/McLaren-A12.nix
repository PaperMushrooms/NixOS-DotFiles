{ pkgs }:

pkgs.writeShellScriptBin "McLaren-crDroid8-A12" ''
    cd ~/Android/McLaren/crDroid8-A12/
    bash install.sh
    cd 
''
