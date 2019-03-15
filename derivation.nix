{ stdenv
, cmake
}:

{ version }:

stdenv.mkDerivation {
  name = "rpclib-${version}";

  nativeBuildInputs = [
    cmake
  ];

  cmakeFlags = [
    "-DCMAKE_BUILD_TYPE=Release"
  ];

  src = ./.;
}
