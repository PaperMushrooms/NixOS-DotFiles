{ pkgs ? import <nixpkgs> { config.allowUnfree = true; } }:

let
  scripts = import ./scripts.nix { inherit pkgs; };
in

pkgs.mkShell {

  buildInputs = with pkgs; [
    zsh
    android-tools
    scrcpy
    usbmuxd
  ] ++ scripts;

  inputsFrom = [ ];

  shell = "${pkgs.zsh}/bin/zsh";

  shellHook = ''
    alias exit="adb kill-server && exit"
    adb start-server &> /dev/null
    echo
    echo "Android Rooting and PoGo Spoofing Environment is running!"
'';

}

