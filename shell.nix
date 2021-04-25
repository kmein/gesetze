{ pkgs ? import <nixpkgs> {} }:
let
  recht-src = builtins.fetchTarball {
    url = "https://github.com/kmein/recht/archive/0.6.0.tar.gz";
    sha256 = "0kl5669p609yq8js4y5r2gjzrsw2r7qi55hr69kb9agc683pcixn";
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
