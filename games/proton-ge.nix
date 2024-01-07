{ stdenv, fetchurl, ... }:

stdenv.mkDerivation rec {
  name = "proton-ge-custom";
  version = "GE-Proton8-25";

  src = fetchurl {
    url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${version}/${version}.tar.gz";
    sha512 = "287b10bad211e471772017da801089dae2a83a1da50a584b75e3c1c25339768e5a9f25c4cd0cf7db07aa6c5887abe3e8928cae835a5b21c58c95e5fd0dd3f65e";
  };

  buildCommand = ''
    mkdir -p $out
    tar -C $out --strip=1 -x -f $src
  '';
}

