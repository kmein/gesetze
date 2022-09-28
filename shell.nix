{ pkgs ? import <nixpkgs> {} }:
let
  recht-src = builtins.fetchTarball {
    url = "https://github.com/kmein/recht/archive/0.6.3.tar.gz";
    sha256 = "sha256:0h9qn68gk4r7nwiv5c20d23dbirjw186ny5hd8681jm44dli8lxk";
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
