{
   description = "bytespree env setup";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-24.05";
    # nix-unstable.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }:
  let
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in
  {
    devShells.x86_64-linux.default = pkgs.mkShell {
        packages = [
        pkgs.php81
        pkgs.apacheHttpd
        pkgs.postgresql_12
        pkgs.php81Packages.composer
        ];
      };
  };
}
