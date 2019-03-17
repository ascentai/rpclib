{ stdenv
, cmake
}:

stdenv.mkDerivation rec {
  name = "rpclib-${version}";
  version = "2.2.1";

  nativeBuildInputs = [
    cmake
  ];

  cmakeFlags = [
    "-DCMAKE_BUILD_TYPE=Release"
  ];

  src = ./.;
}
