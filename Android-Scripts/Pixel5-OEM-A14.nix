{ pkgs }:

pkgs.writeShellScriptBin "Pixel5-OEM-A14" ''
    cd ~/Android/Pixel5/OEM-A14-Latest
    bash install.sh
    cd 
''
