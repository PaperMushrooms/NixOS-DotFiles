{ pkgs }:

pkgs.writeShellScriptBin "McLaren-crDroid10-A14" ''
    cd ~/Android/McLaren/crDroid10-A14/
    bash install.sh
    cd 
''
