{ pkgs ? import <nixpkgs> {} }:
let
  recht-src = builtins.fetchTarball {
    url = "https://github.com/kmein/recht/archive/0.6.4.tar.gz";
    sha256 = "1pvmkbk9a0a1l4dr0zjnac9m4y6qyhbg6xgl9wy589l61v4qkvqv";
  };
  recht = pkgs.callPackage recht-src {};
in
pkgs.mkShell {
  buildInputs = [
    (pkgs.writers.writeBashBin "generate" ''
      rm -rf laws
      ${recht}/bin/recht dump laws | tee index.md
    '')
  ];
}
