with import <nixpkgs> { };

callPackage ./derivation.nix { } {
  version = "2.2.1";
}
