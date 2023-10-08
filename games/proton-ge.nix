{ stdenv, fetchurl, ... }:

stdenv.mkDerivation rec {
  name = "proton-ge";
  version = "GE-Proton8-16";

  src = fetchurl {
    url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${version}/${version}.tar.gz";
    sha256 = "1kyn3axx1fgq9srxwn80cw6an5ib33jvg3rmszjzzsdrzsibki0d";
  };

  installPhase = ''
    mkdir -p $out/share/proton-ge
    cp -r * $out/share/proton-ge
  '';
}

