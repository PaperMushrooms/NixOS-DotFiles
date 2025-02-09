{ pkgs }:

pkgs.writeShellScriptBin "Pixel5-GrapheneOS-A14" ''
    cd ~/Android/Pixel5/GrapheneOS-A14
    bash install.sh
    cd 
''
