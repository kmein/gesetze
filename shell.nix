{ pkgs ? import <nixpkgs> {} }:
let
  recht-src = builtins.fetchTarball {
    url = "https://github.com/kmein/recht/archive/0.6.2.tar.gz";
    sha256 = "08gnrnz3lwh8h6fyga56yfy9qryzm89xbshm7wpxfyxf2pmp1qfx";
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
