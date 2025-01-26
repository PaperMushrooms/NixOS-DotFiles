{ pkgs }:

pkgs.writeShellScriptBin "OnePlus9-crDroid9-A13" ''
    cd ~/Android/OnePlus9/crDroid9-A13
    bash install.sh
    cd 
''
