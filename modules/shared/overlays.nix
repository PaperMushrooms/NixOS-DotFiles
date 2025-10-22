{
  nixpkgs.overlays = [
    (final: prev: {
      gtk3 = prev.gtk3.overrideAttrs (old: {
        mesonFlags = (old.mesonFlags or []) ++ [ "-Dbuild-tests=false" "-Dbuild-examples=false" "-Dbuild-docs=false" ];
      });
    })
  ];
}

