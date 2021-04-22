{ pkgs ? import <nixpkgs> {} }:
let
  recht-src = builtins.fetchTarball {
    url = "https://github.com/kmein/recht/archive/0.4.1.tar.gz";
    sha256 = "0d65drym053832fwc4csry21ljiqd509rag4bp68c8jiq1hygq3l";
  };
  recht = pkgs.haskellPackages.callCabal2nix "recht" recht-src {};
in
pkgs.mkShell {
  buildInputs = [
    (pkgs.writers.writeBashBin "generate" ''
      ${recht}/bin/recht list | ${pkgs.ansifilter}/bin/ansifilter | ${pkgs.gnused}/bin/sed 's/^\[//;s/].*$//' | while read -r law; do
        ${recht}/bin/recht get "$law" | ${pkgs.ansifilter}/bin/ansifilter > "laws/''${law/\//_}.org" && echo "$law"
      done
    '')
  ];
}
