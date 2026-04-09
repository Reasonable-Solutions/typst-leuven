{
  description = "Leuven Typst presentation theme";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs   = nixpkgs.legacyPackages.${system};
    in {

      packages.${system} = {
        # Build the example presentation to PDF
        default = pkgs.stdenvNoCC.mkDerivation {
          name    = "leuven-presentation";
          src     = ./.;
          nativeBuildInputs = [ pkgs.typst ];
          buildPhase   = "typst compile example.typ example.pdf";
          installPhase = ''
            mkdir -p $out
            cp example.pdf $out/
          '';
        };
      };

      devShells.${system}.default = pkgs.mkShell {
        packages = [ pkgs.typst ];
        shellHook = ''
          echo "Leuven Typst theme — available commands:"
          echo "  typst compile example.typ   # compile to PDF"
          echo "  typst watch   example.typ   # live preview"
        '';
      };

    };
}
