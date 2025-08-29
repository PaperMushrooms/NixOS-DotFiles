[
  (final: prev: {
    python3Packages = prev.python3Packages // {
      i3ipc = prev.python3Packages.i3ipc.overridePythonAttrs (old: {
        doCheck = false;
      });
    };
  })
]

