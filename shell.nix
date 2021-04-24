{ pkgs ? import <nixpkgs> {} }:
let
  recht-src = builtins.fetchTarball {
    url = "https://github.com/kmein/recht/archive/0.5.0.tar.gz";
    sha256 = "0wcy286dfia4xw3lbbq2j8qprdwr5s76v27hjxm5l8231wslmv4z";
  };
  recht = pkgs.callPackage recht-src {};
in
pkgs.mkShell {
  buildInputs = [
    (pkgs.writers.writeBashBin "generate" ''
      ${recht}/bin/recht dump laws | tee index.md
    '')
  ];
}
