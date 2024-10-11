# SPDX-License-Identifier: Apache-2.0

{
  description = "pqmx";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";

    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [ ];
      systems = [ "x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin" ];
      perSystem = { pkgs, ... }:
        let
          libopencm3 = pkgs.callPackage ./libopencm3.nix {
            targets = [ "stm32/f4" "stm32/f7" ];
          };
          mbed-os = pkgs.callPackage ./mbed-os.nix {
            targets = [ "mps2_m4" "mps2_m7" ];
          };
        in
        {
          devShells.default = pkgs.mkShellNoCC {
            packages = builtins.attrValues {
              libopencm3 = libopencm3;
              mbed-os = mbed-os;
              gcc-arm-embedded-13 = pkgs.gcc-arm-embedded-13.overrideAttrs (final: _: {
                version = "13.3.rel1";
                src = pkgs.fetchurl {
                  url = "https://developer.arm.com/-/media/Files/downloads/gnu/${final.version}/binrel/arm-gnu-toolchain-${final.version}-${final.platform}-arm-none-eabi.tar.xz";
                  # hashes obtained from location ${url}.sha256asc
                  sha256 = {
                    aarch64-darwin = "fb6921db95d345dc7e5e487dd43b745e3a5b4d5c0c7ca4f707347148760317b4";
                    aarch64-linux = "c8824bffd057afce2259f7618254e840715f33523a3d4e4294f471208f976764";
                    x86_64-darwin = "1ab00742d1ed0926e6f227df39d767f8efab46f5250505c29cb81f548222d794";
                    x86_64-linux = "95c011cee430e64dd6087c75c800f04b9c49832cc1000127a92a97f9c8d83af4";
                  }.${pkgs.stdenv.hostPlatform.system} or (throw "Unsupported system: ${pkgs.stdenv.hostPlatform.system}");
                };
              });

              inherit (pkgs)
                direnv
                nix-direnv
                openocd
                qemu
                ;
            };
            OPENCM3_DIR = ''${libopencm3}'';
            MBED_OS_DIR = ''${mbed-os}'';
          };
        };
      flake = {
        # The usual flake attributes can be defined here, including system-
        # agnostic ones like nixosModule and system-enumerating ones, although
        # those are more easily expressed in perSystem.

      };
    };
}
