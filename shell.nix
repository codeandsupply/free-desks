{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell rec {
  inputsFrom = with pkgs; [
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
