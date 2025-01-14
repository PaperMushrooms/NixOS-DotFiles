{ pkgs }:

pkgs.writeShellScriptBin "Pixel6a-DerpFest-A14" ''
    cd ~/Android/Pixel6a/DerpFest-A14
    bash install.sh
    cd 
''
