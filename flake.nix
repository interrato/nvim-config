{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };

  outputs =
    { self, nixpkgs }:
    let
      forAllSystems =
        pkgsFn:
        nixpkgs.lib.genAttrs nixpkgs.lib.systems.flakeExposed (
          system: pkgsFn nixpkgs.legacyPackages.${system}
        );
    in
    {
      devShells = forAllSystems (pkgs: {
        default = pkgs.mkShellNoCC {
          packages = with pkgs; [
            lua-language-server
            stylua
          ];
        };
      });
    };
}
