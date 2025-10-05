{
  nix-homebrew = {
    enable = true;
    enableRosetta = true;
    user = "matthew";

    taps = {
      "homebrew/homebrew-core" = homebrew-core;
      "homebrew/homebrew-cask" = homebrew-cask;
    };

    multipleTaps = false;


    };
  ({config, ...} { homebrew.taps = builtins.attrNames config.nix-homebrew.taps; })

}
