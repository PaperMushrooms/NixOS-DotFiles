{ pkgs }:

pkgs.writeShellScriptBin "McLaren-A11" ''
    cd ~/Android/McLaren/crDroid7-A11/
    bash install.sh
    cd 
''
