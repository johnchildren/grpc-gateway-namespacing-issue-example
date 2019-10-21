{ sources ? import ./sources.nix }:
with
  { overlay = _: pkgs:
      { niv = import sources.niv {};
        grpc-gateway = pkgs.callPackage ./grpc-gateway.nix {};
      };
  };
import sources.nixpkgs
  { overlays = [ overlay ] ; config = {}; }
