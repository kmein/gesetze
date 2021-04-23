{ pkgs ? import <nixpkgs> {} }:
let
  recht-src = builtins.fetchTarball {
    url = "https://github.com/kmein/recht/archive/0.4.1.tar.gz";
    sha256 = "1z783qn46divf2zbixwhfwbxwp8nyd0drzsfcxdyxp3mnsb67ap5";
  };
  recht = pkgs.callPackage recht-src {};
in
pkgs.mkShell {
  buildInputs = [
    (pkgs.writers.writeBashBin "generate" ''
      > index.md

      ${recht}/bin/recht list \
      | ${pkgs.ansifilter}/bin/ansifilter \
      | ${pkgs.glibc_multi}/bin/iconv -t utf8//IGNORE \
      | while read -r law; do
        law_title="''${law##*] }"
        law_abbreviation="$(echo $law | ${pkgs.gnugrep}/bin/grep -o '^\[.*]' | ${pkgs.gnused}/bin/sed 's/[][]//g')"
        law_path="laws/''${law_abbreviation//\//_}.txt"

        ${recht}/bin/recht get "$law_abbreviation" \
        | ${pkgs.ansifilter}/bin/ansifilter \
        | ${pkgs.glibc_multi}/bin/iconv -t utf8//IGNORE > "$law_path"

        echo "- [$law_abbreviation](''${law_path// /%20}) $law_title" | tee -a index.md
      done
    '')
  ];
}
