{ pkgs ? import ./nix {} }:

pkgs.mkShell {
  name = "grpc-gateway-shell";
  buildInputs = with pkgs; [
    protobuf
    prototool
    grpc-gateway
  ];
}
