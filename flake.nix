{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    recht.url = "github:kmein/recht";
  };

  outputs = { self, recht, nixpkgs }: {
    apps.x86_64-linux.generate = {
      type = "app";
      program = toString (nixpkgs.legacyPackages.x86_64-linux.writers.writeDash "generate" ''
        rm -rf laws
        ${recht.packages.x86_64-linux.recht}/bin/recht dump laws | tee index.md
      '');
    };
  };
}
