{ lib, stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  pname = "themis";
  version = "0.0.3";

  src = fetchFromGitHub {
    owner = "faelau";
    repo = pname;
    rev = "fe739f5d50af9f6b2c302677a7f3a64cd5d751f3";
    sha256 = "sha256-YZI4HdPki+YEjnKX9ouDRjTc1YqpmXnJs3JnhlLzWus=";
  };

  nativeBuildInputs = [];

  installPhase = ''
    mkdir -p $out/share/applications
    cp -a *.desktop $out/share/applications
  '';

  meta = with lib; {
    homepage = "https://github.com/faelau/themis/";
    description = "Remove unwanted desktop files from XDG app launchers.";
    license = licenses.gpl3Plus;
    maintainers = [];
  };
}
