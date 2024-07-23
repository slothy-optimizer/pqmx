# SPDX-License-Identifier: Apache-2.0

{ stdenvNoCC
, fetchFromGitHub
, lib
, targets ? [ ]
}:

stdenvNoCC.mkDerivation rec {
  pname = "mbed-os";
  version = "e04a55f32b0ac0ead9c1eb0b488a20e4e2617130";
  src = fetchFromGitHub {
    owner = "ARMmbed";
    repo = pname;
    rev = version;
    sha256 = "sha256-7h1q/4cqPLz/bovLNYBPUIEIWwdVIV1tf5kdiOEUH9I=";
  };
  dontConfigure = true;
  dontBuild = true;
  installPhase = ''
    runHook preInstall

    mkdir -p $out
    ${builtins.concatStringsSep "\n" (builtins.map (t: "cp --parents -r targets/TARGET_ARM_SSG/TARGET_MPS2/TARGET_" + lib.toUpper t + " $out") targets)}
    cp --parents -r cmsis/CMSIS_5/CMSIS/TARGET_CORTEX_M/Include $out

    runHook postInstall
  '';
  dontStrip = true;
  noAuditTmpdir = true;
}
