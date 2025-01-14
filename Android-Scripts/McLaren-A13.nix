{ pkgs }:

pkgs.writeShellScriptBin "McLaren-crDroid9-A13" ''
    cd ~/Android/McLaren/crDroid9-A13/
    bash install.sh
    cd 
''
