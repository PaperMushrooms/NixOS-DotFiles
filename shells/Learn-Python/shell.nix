{ pkgs ? import <nixpkgs> { config.allowUnfree = true; } }:

  pkgs.mkShell {
  
    buildInputs = with pkgs; [
    	python
        ]; 
  
    shellHook = ''
      echo
      echo "Time to learn some Python!"
    '';
  
  }

