{ pkgs ? import <nixpkgs> { config.allowUnfree = true; } }:

  let
    scripts = import ./scripts.nix { inherit pkgs; };
  in  

  pkgs.mkShell {
  
    buildInputs = with pkgs; [
      android-tools
      usbmuxd
    ] ++ scripts;
  
    inputsFrom = [ ];
  
    shellHook = ''
      echo
      echo "Android Rooting and PoGo Spoofing Environment is running!"
    '';
  
  }

