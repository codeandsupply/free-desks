with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "free-desks";

  env = buildEnv { name = name; paths = buildInputs; };

  buildInputs = [
    ruby.devEnv
    git
    sqlite
    libpcap
    postgresql
    libxml2
    libxslt
    pkgconfig
    bundix
    libffi
  ];
}
