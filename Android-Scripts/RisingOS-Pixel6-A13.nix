{ pkgs }:

pkgs.writeShellScriptBin "RisingOS-Pixel6-A13" ''
    cd ~/Android/Pixel6/RisingOS-A13
    bash install.sh
    cd 
''
