{ pkgs ? import <nixpkgs> { config.allowUnfree = true; } }:

let
  scripts = import ./scripts.nix { inherit pkgs; };
in

pkgs.mkShell {

  buildInputs = with pkgs; [
    android-tools
    usbmuxd
    lolcat
  ] ++ scripts;

  inputsFrom = [ ];

  shellHook = ''
    adb start-server &> /dev/null
    echo
    echo "Android Rooting and PoGo Spoofing Environment is running!"
  '';

}

