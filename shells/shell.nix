{ pkgs ? import <nixpkgs> { config.allowUnfree = true; } }:

  pkgs.mkShell {

    buildInputs = [
      bc
      bison
      build-essential
      ccache
      curl
      flex
      gccMultiStdenv
      git
      git-lfs
      gnupg
      gperf
      imagemagick
      lib32ncurses-dev
      lib32readline-dev
      lib32z1-dev
      liblz4-tool
      libncurses6
      libncurses
      libsdl1.2
      libssl-dev
      libwxgtk3.2
      libxml2
      libxml2-utils
      lzop
      pngcrush
      rsync
      schedtool
      squashfs-tools
      xsltproc
      zip
      zlib1g-dev 
    ];

  inputsFrom = [ ];

  shellHook = ''
    echo "CrDroid Builder Loaded"
  '';

  }
