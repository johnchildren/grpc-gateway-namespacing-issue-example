{ lib, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "grpc-gateway";
  version = "1.11.3";

  src = fetchFromGitHub {
    owner = "grpc-ecosystem";
    repo = pname;
    rev = "v${version}";
    sha256 = "1b57ykl2plik23iqkcsy7i179j2vkql42rndcf630vz5n4lnym6g";
  };

  modSha256 = "14i32kg5c9wxzrcdzx554k5dcmlnmsvicplv5frczbdnw7yvin4z";

  subPackages = [
    "protoc-gen-grpc-gateway"
    "protoc-gen-swagger"
  ];

  meta = with lib; {
    homepage = "https://github.com/grpc-ecosystem/grpc-gateway";
    description = "gRPC to JSON proxy generator following the gRPC HTTP spec";
    maintainers = [ maintainers.johnchildren ];
    license = licenses.bsd3;
    platforms = platforms.unix;
  };
}
