# SPDX-License-Identifier: Apache-2.0

{ lib
, stdenvNoCC
, fetchFromGitHub
}:

stdenvNoCC.mkDerivation rec {
  pname = "cmsis_5";
  version = "5.9.0";
  src = fetchFromGitHub {
    owner = "ARM-software";
    repo = "CMSIS_5";
    rev = version;
    sha256 = "sha256-m3V5pu/ao1d7aVhlWh0lvesAXmYA5JpOVsumAi1Wioc=";
  };
  dontConfigure = true;
  dontBuild = true;
  installPhase = ''
    runHook preInstall

    mkdir -p $out
    cp -r CMSIS/ $out/
    cp -r Device/ $out/

    runHook postInstall
  '';
  dontStrip = true;
  noAuditTmpdir = true;

  meta = {
    description = "Cortex Microcontroller Software Interface Standard";
    homepage = "https://github.com/ARM-software/CMSIS_5";
    license = lib.licenses.asl20;
  };
}
