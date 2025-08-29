self: super: {
  i3ipc = super.python3Packages.buildPythonPackage rec {
    pname = "i3ipc";
    version = "2.2.1";

    src = super.fetchPypi {
      inherit pname version;
      sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
    };

    propagatedBuildInputs = with super.python3Packages; [ ];
    doCheck = false;
  };
}
