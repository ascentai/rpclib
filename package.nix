{ stdenv
, cmake
}:

stdenv.mkDerivation rec {
  version = "2.2.1";
  name = "rpclib-${version}";

  nativeBuildInputs = [
    cmake
  ];

  cmakeFlags = [
    "-DCMAKE_BUILD_TYPE=Release"
  ];

  src = ./.;
}
