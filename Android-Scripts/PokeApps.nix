{ pkgs }:

pkgs.writeShellScriptBin "PokeApps" ''
    cd ~/Android/Apps
    bash install.sh
    cd 
''