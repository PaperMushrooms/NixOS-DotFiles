{ pkgs }:

pkgs.writeShellScriptBin "Pixel6a-OEM-A13" ''
    cd ~/Android/Pixel6a/OEM-A13-Latest
    bash install.sh
    cd 
''