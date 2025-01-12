{ pkgs }:

pkgs.writeShellScriptBin "DerpFest-A14-Pixel6a" ''
    cd ~/Android/Pixel6a/DerpFest-A14
    bash install.sh
    cd 
''
