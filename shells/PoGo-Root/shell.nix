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
    echo
    echo "Android Rooting and PoGo Spoofing Environment is running!"

#    alias adb="sudo adb"
#    alias fastboot="sudo fastboot"
#    alias adb-restart="sudo adb kill-server && sudo adb start-server"
  '';

}

